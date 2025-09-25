"""
Author: Lan <lanhikarixx@gmail.com>
Created: Oct 7 2024

For proper parsing of the assembly source we need lexical correspondence with all syntax we have.
"""

import enum
from dataclasses import dataclass, replace, field
from typing import Any, Iterable, List, Optional, Dict, Callable, Self, Sequence, Tuple, Type, Set, Union, cast
from result import Result, Ok, Err
from ..pipe_util import PipeUtil as pu, stop_iter
from .common_traits import SupportsAspects, Error, SortsBefore, Helper_SortsBefore
from .lexer import LexonData, LexonImpl

# AST

ParserEntity = Union[LexonData.Lexon, 'ASTData.AST']
ParserEntityType = Union[LexonData.LexonType, 'ASTData.ASTType']


class ASTData:
    class ASTType(enum.Enum):
        INCLUDE = enum.auto()
    
    @dataclass(frozen=True)
    class AST(SupportsAspects['ASTData.ASTAspect']):
        # Specified
        ast_type: 'ASTData.ASTType' = field(default=None) # type: ignore
        root_type: LexonData.LexonType = field(default=None) # type: ignore
        root_idx: int = field(default=None) # type: ignore

        # Searched
        root: LexonData.Lexon = field(default=None) # type: ignore
        aspects: Set['ASTData.ASTAspect'] = field(default=None) # type: ignore
        children: List[ParserEntity] = field(default=None) # type: ignore
    
    @dataclass(frozen=True)
    class ASTAspect:
        pass

    @dataclass(frozen=True)
    class TerminatedListAspect(ASTAspect):
        """
        A constraint that the list of children is terminated by a terminator lexon. The list is
        not in any specific order of parser entities.
        """
        
        # Prespecified as constraints
        terminator_lexon_type: LexonData.LexonType = field(default=None) # type: ignore
        allowed_children_types: List[ParserEntityType] = field(default=None) # type: ignore

    @dataclass(frozen=True)
    class FixedListAspect(ASTAspect):
        """
        A constraint that the list of children is fixed by some `num_children`
        """

        # Prespecified as constraints
        num_children: int = field(default=None) # type: ignore

    @dataclass(frozen=True)
    class ExpressionASTAspect(ASTAspect):
        """
        Some Grammars have an expression form, where they're self-recursive, with operant priority,
        and left or right associativity. 
        """
        pass

        # Prespecified as constraints
        
        value_types: List[ParserEntityType] = field(default=None) # type: ignore


Error_RunsParserRule = Error['ASTTraits.Errno_RunsParserRule']


class ASTTraits:
    class RunsParserRule(SortsBefore[ASTData.ASTType]):
        @classmethod
        def parse(cls, lexons: List[LexonData.Lexon]) -> Result[ASTData.AST, Error_RunsParserRule]:
            raise NotImplementedError()
        
    class Errno_RunsParserRule(enum.Enum):
        # Internal. These should not happen.
        _UNIMPLEMENTED = enum.auto()
        _FAILED_TO_ROUTE_BY_ASPECT = enum.auto()
        _INVALID_ROOT_IDX = enum.auto()

        # Based on lexons. Might happen based on input.
        FIXED_NOT_ENOUGH_LEXONS = enum.auto()
        FAILED_VAIDATOR = enum.auto()
        NO_PARSER_RULE_MATCH = enum.auto()

    class Helper_RunsParserRule:

        @classmethod
        def parse(cls, lexons: List[LexonData.Lexon], create_parser: Callable[[], ASTData.AST], 
                  validator: Callable[[int, ParserEntity], bool]) -> Result[ASTData.AST, Error_RunsParserRule]:
            def _create_parser() -> ASTData.AST:
                return create_parser().build_aspects()
            
            def route_parsing_by_aspect(lexons: List[LexonData.Lexon], parser: ASTData.AST
                                        ) -> Result[ASTData.AST, Error['ASTTraits.Errno_RunsParserRule']]:
                return (
                    cls.parse_fixed_list(lexons, parser, parser.of(ASTData.FixedListAspect), validator) 
                        if parser.supports(ASTData.FixedListAspect) else
                    Err(Error(ASTTraits.Errno_RunsParserRule._FAILED_TO_ROUTE_BY_ASPECT))
                )

            return route_parsing_by_aspect(lexons, _create_parser())

        @staticmethod
        def parse_fixed_list(lexons: List[LexonData.Lexon], parser: ASTData.AST, aspect: ASTData.FixedListAspect,
                             validator: Callable[[int, ParserEntity], bool]) -> Result[ASTData.AST, Error_RunsParserRule]:

            def result_pipe() -> Type[pu.OfResult[List[LexonData.Lexon], Error[ASTTraits.Errno_RunsParserRule]]]:
                return pu.OfResult[List[LexonData.Lexon], Error[ASTTraits.Errno_RunsParserRule]]

            return (
                # Since we have a fixed list, we can guarantee that the next N tokens are all we need for this AST.
                lexons

                | result_pipe().check(
                    lambda lexons: len(lexons) >= aspect.num_children + 1, 
                    lambda _: Error(ASTTraits.Errno_RunsParserRule.FIXED_NOT_ENOUGH_LEXONS))
                
                | result_pipe().then_check(
                    lambda _: parser.root_idx < aspect.num_children + 1 and
                              parser.root_idx >= 0,
                    lambda _: Error(ASTTraits.Errno_RunsParserRule._INVALID_ROOT_IDX))

                # We're only concerned with the next N lexons for fixed list AST
                | result_pipe().on_ok(lambda lexons: lexons[:aspect.num_children+1])

                # Validate all the lexons until the first error if any
                | result_pipe().then_check_using(
                    lambda lexons:
                        enumerate(lexons)
                        | pu.OfIter[Tuple[int, LexonData.Lexon]]
                        .first_error(lambda i_lexon: validator(i_lexon[0], i_lexon[1])),
                    lambda i_lexon: 
                        Error(ASTTraits.Errno_RunsParserRule.FAILED_VAIDATOR,
                              data={'i': i_lexon[0], 'lexon': i_lexon[1]})
                )

                | result_pipe().on_ok(lambda lexons:
                    # We're now ready to build the AST with the validated Lexons
                    replace(parser, 
                        root=lexons[parser.root_idx],
                        children=cast(List[ParserEntity], lexons[:parser.root_idx] + lexons[parser.root_idx+1:]))
                )
            )



class ASTImpl:
    class Impl(ASTData.AST, ASTTraits.RunsParserRule):
        # implements SortsBefore
        def get_sort_key(self) -> ASTData.ASTType:
            return self.ast_type

    class IncludeAST(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, 
                ast_type=ASTData.ASTType.INCLUDE,
                root_type=LexonData.LexonType.DIRECTIVE,
                root_idx=0,

                aspects={ASTData.FixedListAspect(num_children=1)}
            )

        # implements RunsParserRule
        @classmethod
        def parse(cls, lexons: List[LexonData.Lexon]) -> Result[ASTData.AST, Error_RunsParserRule]:
            def validator(parse_idx: int, token: ParserEntity) -> bool:
                return (
                    False if parse_idx < 0 or parse_idx > 1 else
                    [ isinstance(token, LexonImpl.DirectiveLexon) and 
                        token.of(LexonData.WordLexonAspect).word == 'include',
                      isinstance(token, LexonImpl.StringLexon)
                    ][parse_idx]
                )
            return ASTTraits.Helper_RunsParserRule.parse(lexons, lambda: cls(), validator)
        
    pass

# Parser

class ParserData:
    @dataclass
    class Parser:
        ast_rules: Set[ASTTraits.RunsParserRule] = field(default=None) # type: ignore


class ParserTraits:
    class Parses:
        @classmethod
        def parse(cls, lexons: List[LexonData.Lexon]) -> Tuple[List[ParserEntity], Result[Tuple[()], Error_RunsParserRule]]:
            """
            Takes a stream of lexons and turns it into a list of Lexons and ASTs. Returns the accumulated list and any error
            encountered.
            """
            raise NotImplementedError()


class ParserImpl:
    class Parser(ParserData.Parser, ParserTraits.Parses):
        # implements ParserTraits.Parses
        @classmethod
        def parse(cls, lexons: List[LexonData.Lexon]) -> Tuple[List[ParserEntity], Result[Tuple[()], Error_RunsParserRule]]:
            def make_rule_set() -> List[ASTImpl.Impl]:
                return (
                    [
                        ASTImpl.IncludeAST
                    ]
                    | pu.OfIter[Type[ASTImpl.Impl]].map(lambda _cls: _cls().build_aspects()) 
                    | pu.OfIter[ASTImpl.Impl].to_list()
                )
            
            def make_parser() -> ParserData.Parser:
                return cls(cast(Set[ASTTraits.RunsParserRule], 
                                Helper_SortsBefore[ASTData.ASTType].sort_by_specified_priority(
                                    make_rule_set())))

            def curline(lexons: List[LexonData.Lexon], orig_lexons: List[LexonData.Lexon]) -> int:
                return (
                    # Lexons begin consuming left to right so the slice of the difference in
                    # lengths is what was consumed so far
                    orig_lexons[:len(orig_lexons) - len(lexons)]

                    | pu.OfIter[LexonData.Lexon].map(lambda lexon: lexon.scanned_text.count('\n'))
                    | pu.Of[Iterable[int]].to(sum)
                )
            
            def reproduce_text(lexons: List[LexonData.Lexon]) -> str:
                return (
                    lexons
                    | pu.OfIter[LexonData.Lexon].map(lambda lexon: lexon.scanned_text)
                    | pu.OfIter[str].reduce('', lambda acc, s: acc + s)
                )
            
            def curry_scan_next_ast(parser: ParserData.Parser, orig_lexons: List[LexonData.Lexon]
                                   ) -> Callable[[List[LexonData.Lexon]], Tuple[Result[ParserEntity, Error_RunsParserRule], int]]:
                def _compute(lexons: List[LexonData.Lexon]) -> Tuple[Result[ParserEntity, Error_RunsParserRule], int]:
                    return (
                        parser.ast_rules

                        | pu.OfIter[ASTTraits.RunsParserRule]
                        .map(lambda rule: rule.parse(lexons))

                        | pu.OfResult[ASTData.AST, Error_RunsParserRule]
                        .unwrap_first_ok()

                        # If no AST parser works
                        | pu.OfResult[ASTData.AST, Error_RunsParserRule]
                        .check_not_none(lambda: 
                            Error_RunsParserRule(
                                ASTTraits.Errno_RunsParserRule.NO_PARSER_RULE_MATCH,
                                f'No valid AST found at lexon {len(orig_lexons) - len(lexons)} at line {curline(lexons, orig_lexons)}:\n' +
                                f'\nFile: {reproduce_text(lexons[:min(20, len(lexons)-1)])}\n...',
                                {'lexon': lexons[0]}
                        ))

                        # Some lexons do not need to be parsed into ASTs. This includes comments,
                        # so we can allow these.
                        | pu.Of[Result[ASTData.AST, Error_RunsParserRule]]
                        .to(lambda res: 
                            cast(Result[ParserEntity, Error_RunsParserRule], Ok(res.unwrap_err().data['lexon']))
                                if res.is_err() and 
                                   res.unwrap_err().errno == ASTTraits.Errno_RunsParserRule.NO_PARSER_RULE_MATCH and
                                   'lexon' in res.unwrap_err().data and
                                   cast(LexonData.Lexon, res.unwrap_err().data['lexon']).lexon_type in [
                                       LexonData.LexonType.INLINE_COMMENT, 
                                       LexonData.LexonType.MULTILINE_COMMENT] else
                            
                            # Just type cast AST -> ParserEntity since it is a supertype of it.
                            cast(Result[ParserEntity, Error_RunsParserRule], res)
                        )

                        # Include the amount to advance the scanner
                        | pu.Of[Result[ParserEntity, Error_RunsParserRule]]
                        .to(lambda res_entity:
                            (res_entity, len(cast(ASTData.AST, res_entity.unwrap()).children) + 1) 
                                if res_entity.is_ok() and isinstance(res_entity.unwrap(), ASTData.AST)  else
                            (res_entity, 1)
                                if res_entity.is_ok() and isinstance(res_entity.unwrap(), LexonData.Lexon)  else
                            (res_entity, 0)
                        )
                    )
                
                return _compute


            def consume(lexons: List[LexonData.Lexon], orig_lexons: List[LexonData.Lexon], parser: ParserData.Parser
                        ) -> Tuple[List[ParserEntity], Result[Tuple[()], Error_RunsParserRule]]:
                return (
                    lexons

                    # Scan the string and advance by different lengths of scanned text
                    | pu.OfList[LexonData.Lexon]
                    .scan_map(curry_scan_next_ast(parser, orig_lexons))

                    # Accumulate results but stop at the first error and report it
                    | pu.OfResult[ParserEntity, Error_RunsParserRule]
                    .unwrap_until_error_including()
                )

            return consume(lexons, lexons, make_parser())

# ---

def read_file(file_path: str) -> None:

    from .lexer import read_file as read_file_as_lexer

    # First scan the content into /tmp/lexons.tmp and get the lexons
    lexons = read_file_as_lexer(file_path)

    entities, res = ParserImpl.Parser().parse(lexons)

    for i, entity in enumerate(entities):
        print(i, entity)
        print('')
    
    if res.is_err():
        print('Error:', res.unwrap_err().errno)
        print(res.unwrap_err().details)
        raise Exception('Unwrap Error')


    # split_multi_lines = False

    # with open('/tmp/asts.tmp', 'w') as fw:
    #     for lexon in lexons:
    #         if split_multi_lines and lexon.scanned_text.count('\n') > 1:
    #                 lines = lexon.scanned_text.splitlines()
    #                 for line in lines:
    #                     if line.strip() == '':
    #                         continue
    #                     tup = f'{lexon.lexon_type},{line}'
    #                     fw.write(tup + '\n\n')
    #                     print(tup + '\n')
    #         else:
    #             tup = f'{lexon.lexon_type},{lexon.scanned_text}'
    #             fw.write(tup + '\n')
    #             # print(tup)
            
    # res.unwrap()


def read_repo(proj_path: str, elf_path: str, file_paths: str, verbose: bool=False) -> None:
    import os
    cwd = os.getcwd()
    os.chdir(proj_path)

    if verbose:
        print(f'> proj: {proj_path}')

    try:
        for path in file_paths:
            if verbose: 
                print('> reading %s...' % path)
            read_file(path)
            break

        # if info: print( '> processing symbol table from elf...')
        # sym_table = get_sym_table(elf_path)

    finally:
        os.chdir(cwd)


if __name__ == '__main__':
    # for testing
    # from ...include import definitions

    MAIN_ASM_FILES = [
        'rom.s',
        'data.s',
        'ewram.s',
        'iwram.s',
    ]


    ROM_REPO_DIR = '../'
    ROM_NAME = 'bn6f'
    # units = read_repo(ROM_REPO_DIR, ROM_NAME + ".elf", MAIN_ASM_FILES, verbose=True)

    read_file(ROM_REPO_DIR + 'rom.s')
    # read_file(ROM_REPO_DIR + 'asm/main.s')
    # read_file(ROM_REPO_DIR + 'include/structs/AIData.inc')
    print('OK')

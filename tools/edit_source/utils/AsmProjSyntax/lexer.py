"""
Author: Lan <lanhikarixx@gmail.com>
Created: Oct 2 2024

For proper parsing of the assembly source we need lexical correspondence with all syntax we have.
"""

import enum
from dataclasses import dataclass, replace, field
from functools import lru_cache
from typing import Any, Generator, Iterable, List, Optional, Dict, Callable, Self, Tuple, Type, Set, Union, cast
from result import Result, Ok, Err
import regex
from ..pipe_util import PipeUtil as pu, stop_iter
from .common_traits import SupportsAspects, Error, SortsBefore, Helper_SortsBefore

# Lexons

class LexonData:
    class LexonType(enum.Enum):
        IDENT = enum.auto()
        THUMB_FUNC_START = enum.auto()
        THUMB_FUNC_END = enum.auto()
        OPCODE = enum.auto()
        REG = enum.auto()
        COLON_LABEL = enum.auto()
        DOUBLE_COLON_LABEL = enum.auto()
        DIRECTIVE = enum.auto()
        MACRO_PARAM = enum.auto()
        MACRO_PAREN = enum.auto()
        MACRO_PERC_VAR = enum.auto()
        INT = enum.auto()
        HEX = enum.auto()
        LITERAL_HASH = enum.auto()
        COMMA = enum.auto()
        COLON = enum.auto()
        DOUBLE_COLON = enum.auto()
        PLUS = enum.auto()
        MINUS = enum.auto()
        MATH_INFIX = enum.auto()
        EQUALS = enum.auto()
        INLINE_COMMENT = enum.auto()
        MULTILINE_COMMENT = enum.auto()
        STRING = enum.auto()
        LBRAC = enum.auto()
        RBRAC = enum.auto()
        LCURLY = enum.auto()
        RCURLY = enum.auto()
        LPAREN = enum.auto()
        RPAREN = enum.auto()

    @dataclass(frozen=True)
    class LexonParser:
        regex_group_code: str
        regex_parser: regex.Pattern[str]

    @dataclass(frozen=True)
    class Lexon(SupportsAspects['LexonData.LexonAspect']):
        """
        Data understood by a RunsLexerRule. All Lexons have a specific code and preserve the characters
        that they have scanned. They also support different aspects of their data. Behavior differs
        based on the order of scanners run, so they support specifying the order as well.
        """
        lexon_type: 'LexonData.LexonType' = field(default=None) # type: ignore
        scanned_text: str = field(default=None) # type: ignore
        aspects: Set['LexonData.LexonAspect'] = field(default=None) # type: ignore
    
    @dataclass(frozen=True)
    class LexonAspect:
        pass

    @dataclass(frozen=True)
    class WordLexonAspect(LexonAspect):
        word: str = field(default=None) # type: ignore
    
    @dataclass(frozen=True)
    class TextLexonAspect(LexonAspect):
        text: str = field(default=None) # type: ignore

    @dataclass(frozen=True)
    class IntLexonAspect(LexonAspect):
        n: int = field(default=None) # type: ignore
        base: int = field(default=None) # type: ignore

    @dataclass(frozen=True)
    class SignLexonAspect(LexonAspect):
        pass

    
class LexonTraits:
    class RunsLexerRule(SortsBefore['LexonData.LexonType']):
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return None
    
    class Helper_RunsLexerRule:
        @staticmethod
        @lru_cache(maxsize=None)
        def _cached_compile_regex(regex_group_code: str) -> regex.Pattern[str]:
            """
            Cache results since it is expensive to recompute this
            """
            return regex.compile(regex_group_code)

        @staticmethod
        def cached_compile_regex(regex_group_code: str) -> LexonData.LexonParser:
            return LexonData.LexonParser(
                regex_group_code, 
                LexonTraits.Helper_RunsLexerRule._cached_compile_regex(regex_group_code)
            )
        
        @staticmethod
        def scan_any_grouped(s: str, parser: LexonData.LexonParser, lexon: LexonData.Lexon,
                             builder: Callable[[LexonData.Lexon, List[str]], LexonData.Lexon]
                             ) -> Optional[LexonData.Lexon]:
            """
            Uses the given group parser to give the builder the list of groups parsed and also set
            the scanned_text part of the lexon

            :param s: The string to be parsed
            :param parser: Contains Regex parser to parse the string into groups
            :param lexon: Lexon data to be further built with parsed details using `builder`
            :param builder: Handles logic of building the lexon given the parsed group list of text

            :returns: some Lexon if parsing is successful or None
            """
            return (
                parser.regex_parser.match(s)

                # Check valid match
                | pu.Of[regex.Match[str]].check_not_none()
                | pu.Of[regex.Match[str]].then_check(lambda m: m.span()[0] == 0)

                | pu.OfResult[regex.Match[str], Tuple[()]]
                .on_ok(lambda match:
                    match

                    # Capture scanned text in Lexon
                    | pu.Of[regex.Match[str]]
                    .to(lambda match: 
                        (list(match.groups()), match.span()[1])
                    )
                    | pu.OfUnpack2[List[str], int]
                    .unpack(lambda groups, chars_scanned: 
                        (groups, replace(lexon, scanned_text=s[:chars_scanned]))
                    )

                    # Call user specified Lexon building logic
                    | pu.OfUnpack2[List[str], LexonData.Lexon]
                    .unpack(lambda groups, lexon: 
                        builder(lexon, groups)
                    )
                )

                # Turn into None on Error
                | pu.OfResult[LexonData.Lexon, Tuple[()]]
                .unwrap_ok_or_none()
            )
        
        @staticmethod
        def scan_any_grouped_from(s: str, regex_code: str, create_lexon: Callable[[], 'LexonData.Lexon'],
                                  opt_builder: Optional[Callable[[LexonData.Lexon, List[str]], LexonData.Lexon]]=None
                                  ) -> Optional[LexonData.Lexon]:
            """
            General method to scanning groups given a string, regex, and specific lexon data.
            Figures out how to parse groups based on the LexonAspect of the lexon

            :param s: string to be parsed
            :param regex_code: A regex specifying the groups of interest for this Lexon. Should have
                               a atleast one group (...) to be extracted and parsed according to the 
                               aspects of the lexon
            :param create_lexon: callable to create the initial lexon data with the aspects specified
            :param opt_builder: None by default. Overrides the internal builder logic of this function.
            """

            def replace_(lexon: LexonData.Lexon, aspect_type: Type[LexonData.LexonAspect], 
                         **kwargs: Any) -> LexonData.Lexon:
                return lexon.replace_of(aspect_type, **kwargs)

            def builder(lexon: LexonData.Lexon) -> Callable[[LexonData.Lexon, List[str]], LexonData.Lexon]:
                """
                The builder handles how a Lexon is to be further built given the parsed list of groups
                """

                if opt_builder:
                    return opt_builder
                elif isinstance(lexon, SupportsAspects):
                    return (
                        (lambda lexon, groups: replace_(lexon, LexonData.WordLexonAspect, word=groups[0]))
                            if lexon.supports(LexonData.WordLexonAspect) else
                        (lambda lexon, groups: replace_(lexon, LexonData.TextLexonAspect, text=groups[0]))
                            if lexon.supports(LexonData.TextLexonAspect) else
                        (lambda lexon, groups: replace_(lexon, LexonData.IntLexonAspect, 
                                                        n=int(groups[0], lexon.of(LexonData.IntLexonAspect).base)))
                            if lexon.supports(LexonData.IntLexonAspect) else
                        (lambda lexon, _: lexon)
                            if lexon.supports(LexonData.SignLexonAspect) else
                        (lambda lexon, _: lexon)
                    )
                else:
                    return lambda lexon, _: lexon
            
            def _create_lexon() -> LexonData.Lexon:
                return create_lexon().build_aspects()

            return (
                (LexonTraits.Helper_RunsLexerRule.cached_compile_regex(regex_code), 
                 _create_lexon())

                | pu.OfUnpack2[LexonData.LexonParser, LexonData.Lexon]
                .unpack(lambda parser, lexon: 
                    LexonTraits.Helper_RunsLexerRule.scan_any_grouped(
                        s, parser, lexon, builder(lexon)))
            )
        

class LexonImpl:
    class Impl(LexonData.Lexon, LexonTraits.RunsLexerRule):
        # implements SortsBefore
        def get_sort_key(self) -> LexonData.LexonType:
            return self.lexon_type

    class IdentLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect()}, 
                           lexon_type=LexonData.LexonType.IDENT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([a-zA-Z_][a-zA-Z0-9_]*)\s*', lambda: cls())

    class OpcodeLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect()}, 
                           lexon_type=LexonData.LexonType.OPCODE)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s.lower(), (
                    [ 'push', 'pop', 'mov', 'lsl', 'bl', 'b', 'bx', 'beq', 'bne', 'blt', 'bgt', 'add', 'sub', 'mul',
                      'lsr', 'asr', 'tst', 'cmp', 'and', 'orr', 'eor', 'bic', 'ldr', 'ldrb', 'ldrh', 'str', 'strb', 'strh',
                      'swi', 'neg', 'nop',
                      # some ARM opcodes
                      'adr',
                    ]
                    | pu.Of[List[str]].to(lambda l: '|'.join(l))
                    | pu.Of[str].to(lambda rgx: rf'({rgx})\s*')
                ), 
                lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.IDENT}

    class RegLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), },
                           lexon_type=LexonData.LexonType.REG)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s.lower(), (
                    ['r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9', 'r10', 'r12', 'lr', 'sp', 'pc']
                    | pu.Of[List[str]].to(lambda l: '|'.join(l))
                    | pu.Of[str].to(lambda rgx: rf'({rgx})\s*')
                ),
                lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.IDENT}

    class ThumbFuncStartLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.THUMB_FUNC_START)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, (
                    'thumb_func_start' | pu.Of[str].to(lambda rgx: rf'({rgx})\s*') 
                ), 
                lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.IDENT}

    class ThumbFuncEndLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.THUMB_FUNC_END)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, (
                    'thumb_func_end' | pu.Of[str].to(lambda rgx: rf'({rgx})\s*') 
                ), lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.IDENT}

    class ColonLabelLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.COLON_LABEL)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([a-zA-Z][a-zA-Z0-9_]*)\:\s*', lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.COLON, LexonData.LexonType.DOUBLE_COLON, LexonData.LexonType.IDENT}

    class DoubleColonLabelLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.DOUBLE_COLON_LABEL)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([a-zA-Z][a-zA-Z0-9_]*)\:\:\s*', lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.COLON_LABEL}

    class DirectiveLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.DIRECTIVE)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'\.([a-zA-Z][a-zA-Z0-9_]*)\s*', lambda: cls())

    class MacroParamLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.MACRO_PARAM)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'\\([a-zA-Z][a-zA-Z0-9_]*)\s*', lambda: cls())

    class MacroParenLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.MACRO_PAREN)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\\\(\))', lambda: cls())

    class MacroPercVarLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.MACRO_PERC_VAR)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'\%([a-zA-Z][a-zA-Z0-9_]*)\s*', lambda: cls())

    class LiteralHashLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.LITERAL_HASH)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\#)', lambda: cls())

    class CommaLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.COMMA)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\,)\s*', lambda: cls())

    class ColonLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.COLON)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\:)\s*', lambda: cls())

    class DoubleColonLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.DOUBLE_COLON)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\:\:)\s*', lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.COLON}

    class EqualsLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.EQUALS)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(=)', lambda: cls())

    class PlusLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.PLUS)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\+)', lambda: cls())

    class MinusLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.MINUS)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\-)', lambda: cls())

    class MathInfix(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.WordLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.MATH_INFIX)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(>|<|==|\*|\/|<<|>>|\||\&|\^|\!)\s*', lambda: cls())

    class IntLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.IntLexonAspect(base=10), }, 
                           lexon_type=LexonData.LexonType.INT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([-]?[0-9][0-9]*)\s*', lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.MINUS}

    class HexLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.IntLexonAspect(base=16), }, 
                           lexon_type=LexonData.LexonType.HEX)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'0x([-]?[0-9a-fA-F][0-9a-fA-F]*)\s*', lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.INT}

    class InlineCommentLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.TextLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.INLINE_COMMENT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'//([^\n]*)\s*', lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.MATH_INFIX}

    class MultilineCommentLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.TextLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.MULTILINE_COMMENT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'/\*([\s\S]*?)\*/\s*', lambda: cls())

        # implements SortsBefore
        def sort_before(self) -> Set['LexonData.LexonType']:
            return {LexonData.LexonType.MATH_INFIX}
    
    class StringLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.TextLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.STRING)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'"(.*?)"\s*', lambda: cls())

    class LBracLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.LBRAC)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\[)\s*', lambda: cls())

    class RBracLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.RBRAC)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\])\s*', lambda: cls())

    class LCurlyLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.LCURLY)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\{)\s*', lambda: cls())

    class RCurlyLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.RCURLY)
            
        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\})\s*', lambda: cls())

    class LParenLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.LPAREN)
            
        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\()\s*', lambda: cls())

    class RParenLexon(Impl):
        # implements SupportsAspects
        def build_aspects(self) -> Self:
            return replace(self, aspects={LexonData.SignLexonAspect(), }, 
                           lexon_type=LexonData.LexonType.LPAREN)
            
        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['LexonData.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\))\s*', lambda: cls())

# Lexers

class LexerData:
    @dataclass(frozen=True)
    class Lexer:
        lexer_rules: List[LexonTraits.RunsLexerRule] = field(default=None) # type: ignore

        
class LexerTraits:
    class Lexalizes:
        @classmethod
        def lexalize(cls, s: str) -> Tuple[List['LexonData.Lexon'], Result[Tuple[()], Error['LexerTraits.Errno_Lexalizes']]]:
            """
            Takes a character stream `s` and turns it into a stream of lexons. If it encounters
            an error during this process, it returns the scanned lexons + the error, otherwise it
            returns the entire lexons the string represents + Ok
            """
            raise NotImplementedError()

    class Errno_Lexalizes(enum.Enum):
        NO_VALID_LEXON_FOUND = enum.auto()
        

class LexerImpl:
    class Impl(LexerData.Lexer, LexerTraits.Lexalizes):
        pass
    class Lexer(Impl):
        # implements Lexalizes 
        @classmethod
        def lexalize(cls, s: str) -> Tuple[List['LexonData.Lexon'], Result[Tuple[()], Error[LexerTraits.Errno_Lexalizes]]]:
            def make_rule_set() -> List[LexonTraits.RunsLexerRule]:
                return (
                    [
                        LexonImpl.IdentLexon, LexonImpl.OpcodeLexon, LexonImpl.RegLexon,
                        LexonImpl.ThumbFuncStartLexon, LexonImpl.ThumbFuncEndLexon, LexonImpl.ColonLabelLexon, 
                        LexonImpl.DoubleColonLabelLexon, LexonImpl.DirectiveLexon, LexonImpl.MacroParamLexon, 
                        LexonImpl.MacroParenLexon, LexonImpl.MacroPercVarLexon, LexonImpl.LiteralHashLexon, 
                        LexonImpl.CommaLexon, LexonImpl.ColonLexon, LexonImpl.DoubleColonLexon, 
                        LexonImpl.EqualsLexon, LexonImpl.PlusLexon, LexonImpl.MinusLexon, 
                        LexonImpl.MathInfix, LexonImpl.IntLexon, LexonImpl.HexLexon, 
                        LexonImpl.InlineCommentLexon, LexonImpl.MultilineCommentLexon, LexonImpl.StringLexon, 
                        LexonImpl.LBracLexon, LexonImpl.RBracLexon, LexonImpl.LCurlyLexon, 
                        LexonImpl.RCurlyLexon, LexonImpl.LParenLexon, LexonImpl.RParenLexon
                    ] 
                    | pu.OfIter[Type[LexonImpl.Impl]].map(lambda _cls: _cls().build_aspects())
                    | pu.OfIter[LexonTraits.RunsLexerRule].to_list()
                )
            
            def make_lexer() -> LexerData.Lexer:
                return cls(cast(List[LexonTraits.RunsLexerRule], 
                                Helper_SortsBefore[LexonData.LexonType].sort_by_specified_priority( make_rule_set()))
                )
            
            def curry_scan_next_lexon(lexer: LexerData.Lexer, orig_s: str) -> Callable[[str], Tuple[Result[LexonData.Lexon, Error[LexerTraits.Errno_Lexalizes]], int]]:
                def _compute(s: str) -> Tuple[Result[LexonData.Lexon, Error[LexerTraits.Errno_Lexalizes]], int]:
                    return (
                        lexer.lexer_rules

                        | pu.OfIter[LexonTraits.RunsLexerRule]
                        .map(lambda rule: rule.lexer_scan(s))

                        | pu.OfIter[LexonData.Lexon]
                        .first_not_none()

                        # None in this context means all the above were Nones, no scanner worked.
                        | pu.OfResult[LexonData.Lexon, Error[LexerTraits.Errno_Lexalizes]]
                        .check_not_none(lambda: 
                            Error[LexerTraits.Errno_Lexalizes](
                                LexerTraits.Errno_Lexalizes.NO_VALID_LEXON_FOUND,
                                f'No valid lexon found at char {len(orig_s) - len(s)}: "{s[:min(80, len(s)-1)]}..."'))

                        # Advance by the amount of characters scanned
                        | pu.Of[Result[LexonData.Lexon, Error[LexerTraits.Errno_Lexalizes]]]
                        .to(lambda res_lexon: 
                            (res_lexon, len(res_lexon.unwrap().scanned_text))
                                if res_lexon.is_ok() else
                            (res_lexon, 0)
                        )
                    )
                
                return _compute

            def consume(s: str, orig_s: str, lexer: LexerData.Lexer
                        ) -> Tuple[List[LexonData.Lexon], Result[Tuple[()], Error[LexerTraits.Errno_Lexalizes]]]:
                return (
                    s

                    # Scan the string and advance by different lengths of scanned text
                    | pu.OfStr.scan_map(curry_scan_next_lexon(lexer, orig_s))

                    | pu.OfResult[LexonData.Lexon, Error[LexerTraits.Errno_Lexalizes]]
                    .unwrap_until_error_including()
                )

            return consume(s.strip(), s.strip(), make_lexer())

# ---

def read_file(file_path: str) -> List['LexonData.Lexon']:
    with open(file_path, 'r') as fr:
        file_input_s = fr.read().strip()

    lexons, res = LexerImpl.Lexer().lexalize(file_input_s)

    split_multi_lines = False

    with open('/tmp/lexons.tmp', 'w') as fw:
        for lexon in lexons:
            if split_multi_lines and lexon.scanned_text.count('\n') > 1:
                    lines = lexon.scanned_text.splitlines()
                    for line in lines:
                        if line.strip() == '':
                            continue
                        tup = f'{lexon.lexon_type},{line}'
                        fw.write(tup + '\n\n')
                        print(tup + '\n')
            else:
                tup = f'{lexon.lexon_type},{lexon.scanned_text}'
                fw.write(tup + '\n')
                # print(tup)
            
    res.unwrap()

    return lexons


def read_repo(proj_path: str, elf_path: str, file_paths: List[str], verbose: bool=False) -> None:
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

    # read_file(ROM_REPO_DIR + 'rom.s'))
    # read_file(ROM_REPO_DIR + 'asm/main.s')
    read_file(ROM_REPO_DIR + 'include/structs/AIData.inc')
    print('OK')

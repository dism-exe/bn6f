"""
Author: Lan <lanhikarixx@gmail.com>
Created: Oct 2nd 2024

For proper parsing of the assembly source we need lexical correspondence with all syntax we have.
"""

import enum
from dataclasses import dataclass, replace, field
from functools import lru_cache
from typing import List, Optional, Dict, Callable, Tuple, Type, Set
from result import Result, Ok, Err
import itertools
import functools
import regex
import pipe
from ..pipe_util import PipeUtil as pu
from .common_traits import SupportsAspects


class ErrorType(enum.Enum):
    LexerError = enum.auto()
    pass

@dataclass
class Error:
    module: ErrorType
    errno: enum.Enum
    details: Optional[str] = field(default=None)
    data: Optional[dict] = field(default=None)


class Lexons:
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

    @dataclass
    class LexonParsingAspect:
        regex_group_code: str
        regex_parser: regex.Pattern

    @dataclass
    class Lexon(SupportsAspects):
        """
        Data understood by a LexerRuleTrait. 
        """
        lexon_type: 'Lexons.LexonType' = field(default=None)
        scanned_text: str = field(default=None)
        aspects: Set['Lexons.LexonAspect'] = field(default=None)
    
    @dataclass
    class LexonAspect:
        pass

    @dataclass
    class WordLexonAspect(LexonAspect):
        word: str = field(default=None)
    
    @dataclass
    class TextLexonAspect(LexonAspect):
        text: str = field(default=None)

    @dataclass
    class IntLexonAspect(LexonAspect):
        n: int = field(default=None)
        base: int = field(default=None)

    @dataclass
    class SignLexonAspect(LexonAspect):
        pass

    
class LexonTraits:
    class RunsLexerRule:
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return None
        
        def scan_before(self) -> List['Lexons.LexonType']:
            return []
    
    class Helper_RunsLexerRule:

        @staticmethod
        @lru_cache(maxsize=None)
        def _cached_compile_regex(regex_group_code: str) -> regex.Pattern:
            """
            Cache results since it is expensive to recompute this
            """
            return regex.compile(regex_group_code)

        @staticmethod
        def cached_compile_regex(regex_group_code: str) -> Lexons.LexonParsingAspect:
            return Lexons.LexonParsingAspect(
                regex_group_code, 
                LexonTraits.Helper_RunsLexerRule._cached_compile_regex(regex_group_code)
            )
        
        @staticmethod
        def scan_any_grouped(s: str, parser: Lexons.LexonParsingAspect, lexon: Lexons.Lexon,
                             builder: Callable[[Lexons.Lexon, list], Lexons.Lexon]
                             ) -> Optional[Lexons.Lexon]:
            """
            Uses the given group parser to give the builder the list of groups parsed and also set
            the scanned_text part of the lexon
            """
            return (
                parser.regex_parser.match(s)
                | pu.ensure(lambda m: m != None)
                | pu.ensure(lambda m: m.span()[0] == 0)
                | pu.on_ok(lambda m:
                    m
                    | pipe.Pipe(lambda m: (m.groups(), m.span()[1]))
                    | pu.unpack_tup(lambda groups, chars_scanned: (groups, replace(lexon, scanned_text=s[:chars_scanned])))
                    | pu.unpack_tup(lambda groups, lexon: builder(lexon, groups))
                )
                | pu.unwrap_ok_or_none()
            )
        
        @staticmethod
        def scan_any_grouped_from(s: str, regex_code: str, create_lexon: Callable[[], 'Lexons.Lexon'],
                                  opt_builder: Optional[Callable[[Lexons.Lexon, list], Lexons.Lexon]]=None
                                  ) -> Optional[Lexons.Lexon]:
            def builder(lexon: Lexons.Lexon) -> Callable[[Lexons.Lexon, list], Lexons.Lexon]:
                def replace_(lexon: SupportsAspects, aspect_type, **kwargs):
                    return lexon.replace_of(aspect_type, **kwargs)

                if opt_builder:
                    return opt_builder
                elif isinstance(lexon, SupportsAspects):
                    return (
                        (lambda lexon, groups: replace_(lexon, Lexons.WordLexonAspect, word=groups[0]))
                            if lexon.supports(Lexons.WordLexonAspect) else
                        (lambda lexon, groups: replace_(lexon, Lexons.TextLexonAspect, text=groups[0]))
                            if lexon.supports(Lexons.TextLexonAspect) else
                        (lambda lexon, groups: replace_(lexon, Lexons.IntLexonAspect, 
                                                        n=int(groups[0], lexon.of(Lexons.IntLexonAspect).base)))
                            if lexon.supports(Lexons.IntLexonAspect) else
                        (lambda lexon, _: lexon)
                            if lexon.supports(Lexons.SignLexonAspect) else
                        (lambda lexon, _: lexon)
                    )
                else:
                    return lambda lexon, _: lexon
            
            def _create_lexon():
                return create_lexon().build_aspects()

            return (
                (LexonTraits.Helper_RunsLexerRule.cached_compile_regex(regex_code), _create_lexon())
                | pu.unpack_tup(lambda parser, lexon: 
                    LexonTraits.Helper_RunsLexerRule.scan_any_grouped(
                        s, parser, lexon, builder(lexon)))
            )
        

class LexonsImpl:
    class IdentLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect()], 
                           lexon_type=Lexons.LexonType.IDENT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([a-zA-Z_][a-zA-Z0-9_]*)\s*', lambda: cls())

    class OpcodeLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect()], 
                           lexon_type=Lexons.LexonType.OPCODE)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s.lower(),
                [
                    'push', 'pop', 'mov', 'lsl', 'bl', 'b', 'bx', 'beq', 'bne', 'blt', 'bgt', 'add', 'sub', 'mul',
                    'lsr', 'asr', 'tst', 'cmp', 'and', 'orr', 'eor', 'bic', 'ldr', 'ldrb', 'ldrh', 'str', 'strb', 'strh',
                    'swi', 'neg', 'nop',
                    # some ARM opcodes
                    'adr',
                ]
                | pipe.map(lambda l: '|'.join(l))
                | pipe.map(lambda rgx: rf'({rgx})\s*')
                | pipe.Pipe(str), lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.IDENT]

    class RegLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ],
                           lexon_type=Lexons.LexonType.REG)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s.lower(),
                ['r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9', 'r10', 'r12', 'lr', 'sp', 'pc']
                | pipe.map(lambda l: '|'.join(l))
                | pipe.map(lambda rgx: rf'({rgx})\s*')
                | pipe.Pipe(str), lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.IDENT]

    class ThumbFuncStartLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.THUMB_FUNC_START)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, 'thumb_func_start' | pipe.map(lambda rgx: rf'({rgx})\s*') | pipe.Pipe(str), lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.IDENT]

    class ThumbFuncEndLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.THUMB_FUNC_END)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, 'thumb_func_end' | pipe.map(lambda rgx: rf'({rgx})\s*') | pipe.Pipe(str), lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.IDENT]

    class ColonLabelLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.COLON_LABEL)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([a-zA-Z][a-zA-Z0-9_]*)\:\s*', lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.COLON, Lexons.LexonType.DOUBLE_COLON, Lexons.LexonType.IDENT]

    class DoubleColonLabelLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.DOUBLE_COLON_LABEL)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([a-zA-Z][a-zA-Z0-9_]*)\:\:\s*', lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.COLON_LABEL]

    class DirectiveLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.DIRECTIVE)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'\.([a-zA-Z][a-zA-Z0-9_]*)\s*', lambda: cls())

    class MacroParamLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.MACRO_PARAM)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'\\([a-zA-Z][a-zA-Z0-9_]*)\s*', lambda: cls())

    class MacroParenLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.MACRO_PAREN)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\\\(\))', lambda: cls())

    class MacroPercVarLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.MACRO_PERC_VAR)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'\%([a-zA-Z][a-zA-Z0-9_]*)\s*', lambda: cls())

    class LiteralHashLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.LITERAL_HASH)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\#)', lambda: cls())

    class CommaLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.COMMA)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\,)\s*', lambda: cls())

    class ColonLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.COLON)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\:)\s*', lambda: cls())

    class DoubleColonLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.DOUBLE_COLON)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\:\:)\s*', lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.COLON]

    class EqualsLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.EQUALS)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(=)', lambda: cls())

    class PlusLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.PLUS)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\+)', lambda: cls())

    class MinusLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.MINUS)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\-)', lambda: cls())

    class MathInfix(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.WordLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.MATH_INFIX)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(>|<|==|\*|\/|<<|>>|\||\&|\^|\!)\s*', lambda: cls())

    class IntLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.IntLexonAspect(base=10), ], 
                           lexon_type=Lexons.LexonType.INT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'([-]?[0-9][0-9]*)\s*', lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.MINUS]

    class HexLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.IntLexonAspect(base=16), ], 
                           lexon_type=Lexons.LexonType.HEX)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'0x([-]?[0-9a-fA-F][0-9a-fA-F]*)\s*', lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.INT]

    class InlineCommentLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.TextLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.INLINE_COMMENT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'//([^\n]*)\s*', lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.MATH_INFIX]

    class MultilineCommentLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.TextLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.MULTILINE_COMMENT)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'/\*([\s\S]*?)\*/\s*', lambda: cls())

        def scan_before(self) -> List['Lexons.LexonType']:
            return [Lexons.LexonType.MATH_INFIX]
    
    class StringLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.TextLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.STRING)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'"(.*?)"\s*', lambda: cls())

    class LBracLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.LBRAC)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\[)\s*', lambda: cls())

    class RBracLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.RBRAC)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\])\s*', lambda: cls())

    class LCurlyLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.LCURLY)

        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\{)\s*', lambda: cls())

    class RCurlyLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.RCURLY)
            
        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\})\s*', lambda: cls())

    class LParenLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.LPAREN)
            
        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\()\s*', lambda: cls())

    class RParenLexon(Lexons.Lexon, LexonTraits.RunsLexerRule):
        # implements SupportsAspects
        def build_aspects(self):
            return replace(self, aspects=[Lexons.SignLexonAspect(), ], 
                           lexon_type=Lexons.LexonType.LPAREN)
            
        # implements RunsLexerRule
        @classmethod
        def lexer_scan(cls, s: str) -> Optional['Lexons.Lexon']:
            return LexonTraits.Helper_RunsLexerRule.scan_any_grouped_from(
                s, r'(\))\s*', lambda: cls())


class Lexers:
    @dataclass
    class Lexer:
        lexer_rules: List[LexonTraits.RunsLexerRule] = field(default=None)

        
class LexerTraits:
    class Lexalizes:
        @classmethod
        def lexalize(cls, s: str) -> Tuple[List['Lexons.Lexon'], Result[None, Error]]:
            pass

    class Helper_Lexalizes:
        @staticmethod
        def sort_lexer_rules_by_specified_priority(l: List[LexonTraits.RunsLexerRule]):
            def find_index(l, elem):
                try:
                    return l.index(elem)
                except ValueError:
                    return -1
            
            def typ_order_to_find_indices(build_list: List[LexonTraits.RunsLexerRule], typ_order: List[Lexons.LexonType]):
                return (
                    typ_order
                    # | pu.echo(lambda o: print(f'o is {o} ', end=''))
                    | pipe.map(lambda typ: find_index(
                        build_list
                        | pipe.map(lambda rule: rule.lexon_type)
                        | pipe.Pipe(list),
                        typ))
                    | pipe.Pipe(list)
                    # | pu.echo(lambda l: print(f'l is {l}'))
                )
            
            def get_index_to_insert_behind(find_indices: List[int]) -> int:
                return (
                    find_indices
                    | pipe.filter(lambda idx: idx != -1)
                    | pipe.Pipe(list)
                    | pipe.Pipe(lambda l: -1 if len(l) == 0 else min(l))
                )
            
            def rebuild_rule_list_order_sorted(l: List[LexonTraits.RunsLexerRule]):
                return functools.reduce(
                    lambda built_l, rule: 
                        rule.scan_before()
                        # | pu.echo(lambda _: 
                        #             built_l 
                        #             | pipe.map(lambda rule: rule.lexon_type)
                        #             | pipe.Pipe(list)
                        #             | pipe.Pipe(lambda l: print(f'built_l: {l}'))
                        # )
                        | pipe.Pipe(lambda typ_order: typ_order_to_find_indices(built_l, typ_order))
                        | pipe.Pipe(lambda find_indices: get_index_to_insert_behind(find_indices))
                        | pipe.Pipe(lambda i: 
                                    [rule] + built_l if i == 0 else
                                    built_l + [rule] if i == -1 else
                                    built_l[:i] + [rule] + built_l[i:]),
                    l, [])

            return rebuild_rule_list_order_sorted(l)
    
    class Errno_Lexalizes(enum.Enum):
        NO_VALID_LEXON_FOUND = enum.auto()
        

class LexerImpl:
    class Lexer(Lexers.Lexer):
        # implements Lexalizes 
        @classmethod
        def lexalize(cls, s: str) -> Tuple[List['Lexons.Lexon'], Result[None, Error]]:
            def make_rule_list() -> List[LexonTraits.RunsLexerRule]:
                return (
                    [
                        LexonsImpl.IdentLexon, LexonsImpl.OpcodeLexon, LexonsImpl.RegLexon,
                        LexonsImpl.ThumbFuncStartLexon, LexonsImpl.ThumbFuncEndLexon, LexonsImpl.ColonLabelLexon, 
                        LexonsImpl.DoubleColonLabelLexon, LexonsImpl.DirectiveLexon, LexonsImpl.MacroParamLexon, 
                        LexonsImpl.MacroParenLexon, LexonsImpl.MacroPercVarLexon, LexonsImpl.LiteralHashLexon, 
                        LexonsImpl.CommaLexon, LexonsImpl.ColonLexon, LexonsImpl.DoubleColonLexon, 
                        LexonsImpl.EqualsLexon, LexonsImpl.PlusLexon, LexonsImpl.MinusLexon, 
                        LexonsImpl.MathInfix, LexonsImpl.IntLexon, LexonsImpl.HexLexon, 
                        LexonsImpl.InlineCommentLexon, LexonsImpl.MultilineCommentLexon, LexonsImpl.StringLexon, 
                        LexonsImpl.LBracLexon, LexonsImpl.RBracLexon, LexonsImpl.LCurlyLexon, 
                        LexonsImpl.RCurlyLexon, LexonsImpl.LParenLexon, LexonsImpl.RParenLexon
                    ] 
                    | pipe.map(lambda _cls: _cls().build_aspects()) | pipe.Pipe(list)
                    # [LexonsImpl.IdentLexon]
                )
            
            def make_lexer() -> Lexers.Lexer:
                # print('original_rule_list', make_rule_list() | pipe.map(lambda r: r.lexon_type) | pipe.Pipe(list))
                return cls(LexerTraits.Helper_Lexalizes.sort_lexer_rules_by_specified_priority(
                           make_rule_list()))
            
            def consume(s: str, orig_s: str, lexer: Lexers.Lexer
                        ) -> Tuple[List['Lexons.Lexon'], Result[None, Error]]:
                # print('\nsorted_rule_list', lexer.lexer_rules | pipe.map(lambda r: r.lexon_type) | pipe.Pipe(list))
                result: List[Lexons.Lexon] = []
                while True:
                    res_lexon = (
                        lexer.lexer_rules
                        | pipe.Pipe(lambda rules: 
                            functools.reduce(
                                lambda res, rule:
                                    res if res is not None else # found lexon, skip forward
                                    rule.lexer_scan(s), 
                                rules, None)
                        )
                        | pu.ensure_or_err(lambda opt_lexon: opt_lexon != None,
                                        lambda _: Err(Error(
                                            ErrorType.LexerError, 
                                            LexerTraits.Errno_Lexalizes.NO_VALID_LEXON_FOUND,
                                            f'No valid lexon found at char {len(orig_s) - len(s)}: "{s[:min(80, len(s)-1)]}..."')))
                    )

                    if res_lexon.is_err():
                        return (result, res_lexon)

                    lexon = res_lexon.unwrap()

                    result.append(lexon)

                    s = s[len(lexon.scanned_text):]

                    if s.strip() == '':
                        break
                return (result, Ok(()))
            
            return consume(s.strip(), s.strip(), make_lexer())


def read_file(file_path: str):
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


def read_repo(proj_path, elf_path, file_paths, verbose=False):
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
    from ...include import definitions

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

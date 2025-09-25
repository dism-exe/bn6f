from dataclasses import dataclass, is_dataclass, replace, field
from typing import Dict, Iterable, Self, Sequence, Set, Any, Type, TypeVar, Generic, Optional, List, Callable, Protocol, cast
from result import Result, Ok, Err
import functools
from ..pipe_util import PipeUtil as pu, stop_iter

E = TypeVar("E")
A = TypeVar("A")
T = TypeVar("T")

@dataclass
class Error(Generic[E]):
    errno: E
    details: str = field(default_factory=lambda: '')
    data: Dict[str, Any] = field(default_factory=lambda: {})


@dataclass(frozen=True)
class SupportsAspects(Generic[A]):
    """
    - Requires that the object has a set of aspects named `aspects`
    - All aspects should inherit from some base type for the aspects field which may have different
      policies enforced.
    """
    aspects: Set[A]

    def supports(self, aspect_type: Type[A]) -> bool:
        return (
            self.aspects

            # Ask if any is of type `aspect_type` with an OR fold
            | pu.OfIter[A]
            .reduce(False, lambda res, aspect: 
                res | isinstance(aspect, aspect_type)
            )
        )
    
    def of(self, aspect_type: Type[T]) -> T:
        return (
            self.aspects
            | pu.OfIter[A].filter(lambda aspect: isinstance(aspect, aspect_type))
            | pu.Of[Iterable[A]].to(lambda itr: cast(T, next(iter(itr))))
        )
    
    def replace_of(self, aspect_type: Type[T], **kwargs: Any) -> Self:
        def replace_aspects(**kwargs: Any) -> Set[A]:
            return (
                self.aspects
                | pu.OfIter[A].map(lambda aspect: 
                     replace(cast(Any, aspect), **kwargs)
                        if isinstance(aspect, aspect_type) else
                     aspect
                )
                | pu.Of[Iterable[A]].to(lambda aspects: set(aspects))
            )
        return replace(self, aspects=replace_aspects(**kwargs))
    
    def build_aspects(self) -> Self:
        """
        For immutable replace-style data processing. Implement this to signal what aspects this
        object supports using replace(self, aspects={...})
        """
        return self


class EnforcesAspectCombinations(Generic[A]):
    """
    Use this on the Aspects base type. Defines additional rules on how aspects may be combined.
    """
    
    def exclusive_with_aspects(self) -> Set[Type[A]]:
        """
        For aspects that error on build when included with others.
        """
        return set()

    def must_contain_at_least_one(self) -> Set[Type[A]]:
        """
        For aspects that error on build when none of them are included
        """
        return set()
    
    @classmethod
    def _is_type_in(cls, aspect: A, aspect_types_to_check: Set[Type[A]]) -> bool:
        return (
            aspect_types_to_check
            | pu.OfIter[Type[A]]
            .reduce(False, lambda res, t: res | isinstance(aspect, t))
        )

    @classmethod
    def _are_exclusive(cls, aspects: Set[A], types_to_check: Set[Type[A]]) -> bool:
        return (
            aspects
            | pu.OfIter[A]
            .reduce(0, lambda acc, aspect: acc + (1 if cls._is_type_in(aspect, types_to_check) else 0))
            | pu.Of[int]
            .to(lambda n: n <= 1)
        )
    
    @classmethod
    def _have_atleast_one(cls, aspects: Set[A], types_to_check: Set[Type[A]]) -> bool:
        return (
            aspects
            | pu.OfIter[A]
            .reduce(0, lambda acc, aspect: acc + (1 if cls._is_type_in(aspect, types_to_check) else 0))
            | pu.Of[int]
            .to(lambda n: n > 0)
        )

    def enforce_aspect_policy(self, aspects: Set[A]) -> str:
        """
        Returns '' if policy satisfied else name of policy failed
        default policy checks checked here are 'EXCLUSIVITY' and 'ATLEAST_ONE'. 
        """
        return (
            'EXCLUSIVITY' if not self._are_exclusive(aspects, self.exclusive_with_aspects()) else
            'ATLEAST_ONE' if not self._have_atleast_one(aspects, self.must_contain_at_least_one()) else
            ''
        )


class SortsBefore(Generic[T]):
    def get_sort_key(self) -> T:
        raise NotImplemented

    def sort_before(self) -> Set[T]:
        return set()



class Helper_SortsBefore(Generic[T]):
    """
    `T` is the type to sort by
    """

    @classmethod
    def sort_by_specified_priority(cls, rule_list: Sequence[SortsBefore[T]]) -> List[SortsBefore[T]]:
        """
        Sorts the rule_list which impliment SortsBefore[T] according to the priority specified by
        each. `get_sort_key` 
        """

        return (
            rule_list

            # For each rule, let's figure out at which index it should be inserted
            | pu.OfIter[SortsBefore[T]]
            .reduce(cast(List[SortsBefore[T]], []), lambda built_l, rule: 
                rule.sort_before()

                | pu.Of[Set[T]]
                .to(lambda order_list: cls._order_list_to_sort_keys(
                    order_list, cls._build_list_to_sort_keys(built_l)))

                | pu.Of[List[int]]
                .to(lambda find_indices: cls._get_index_to_insert_behind(find_indices))

                | pu.Of[int]
                .to(lambda i:
                    [rule] + built_l if i == 0 else
                    built_l + [rule] if i == -1 else
                    built_l[:i] + [rule] + built_l[i:]
                )
            )
        )

    @staticmethod
    def _find_index(l: Sequence[T], elem: T) -> int:
        try:
            return l.index(elem)
        except ValueError:
            return -1

    @classmethod
    def _build_list_to_sort_keys(cls, build_list: Sequence[SortsBefore[T]]) -> Sequence[T]:
        return (
            build_list
            | pu.OfIter[SortsBefore[T]].map(lambda obj: obj.get_sort_key())
            | pu.OfIter[T].to_list()
        )

    @classmethod
    def _order_list_to_sort_keys(cls, order_list: Set[T], sort_keys: Sequence[T]) -> List[int]:
        return (
            order_list
            | pu.OfIter[T].map(lambda ord: cls._find_index(sort_keys, ord))
            | pu.OfIter[int].to_list()
        )

    @staticmethod
    def _get_index_to_insert_behind(find_indices: Sequence[int]) -> int:
        return (
            find_indices
            | pu.OfIter[int].filter(lambda idx: idx != -1)
            | pu.OfIter[int].to_list()
            | pu.Of[List[int]].to(lambda l: -1 if len(l) == 0 else min(l))
        )
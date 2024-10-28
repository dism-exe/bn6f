import builtins
from result import Result, Ok, Err
from typing import Any, Callable, Dict, Generator, Generic, Iterable, List, NoReturn, Optional, Sized, Type, overload
from typing import Sequence, Tuple, TypeVar, Union, cast, ParamSpec
import functools

T = TypeVar('T')

Y = TypeVar('Y')
YE = TypeVar('YE')

U = TypeVar('U')
E = TypeVar('E')

T1 = TypeVar('T1')
T2 = TypeVar('T2')
T3 = TypeVar('T3')
T4 = TypeVar('T4')

P = ParamSpec('P')


class Pipe(Generic[P, T, U]):
    """
    Inspired by the pipe library by Julien Palard <julien@python.org>
    Reimplements it to allow for type checks with mypy.

    This basically allows functions to be decorated to be pipable, where the first argument is
    taken from the left of the pipe.

    Instead of `transform(source, arg)` we can do `source | transform(arg)` while implementing
    transform as taking source as a first argument.

    Generic P: The param spec of the @Pipe function
    Generic T: The source type
    Generic U: The tansformed type from the source by the inner function
    """

    def __init__(self, func: Callable[P, Callable[[T], U]]):
        """
        Called when the decorator is applied to a function to turn it into a Pipe.
        Also called when the decorated function is used as a Pipe via __call__

        __call__ supplies `self.func` with the arguments given to the decorated func and basically
        wraps it with its args: (*unused, **kunused) -> func(*args, **kwargs) while preserving its
        signature.

        func itself when decorated is expected to be a curry function that returns an inner function
        that just takes a single source parameter. This source parameter is the other in __ror__.
        """
        self.func = func

        functools.update_wrapper(self, func)

    def __ror__(self, lhs: T) -> U:
        """
        Called when the pipe operation is used with this type to its right: `other | this`.

        Since __call__ fed the args already into self.func, we only need to retrieve the inner
        and apply the source (other) to it.
        """
        inner = cast(Callable[[], Callable[[T], U]], self.func)()
        return inner(lhs)

    def __call__(self, *args: P.args, **kwargs: P.kwargs) -> 'Pipe[P, T, U]':
        """
        Called when the decorated function is used. Just register args and kwargs in a new 
        wrapper function. args2 and kwargs2 here are to preserve signature
        """
        return Pipe[P, T, U](
            lambda *args2, **kwargs2: 
                self.func(*args, *args2, **kwargs, **kwargs2)
        )


class PipeUtil:

    class OfIter(Generic[T]):
        @Pipe
        @staticmethod
        def map(selector: Callable[[T], Y]) -> Callable[[Iterable[T]], Iterable[Y]]:
            """
            A map of values from T to Y
            """
            def inner(iter: Iterable[T]) -> Iterable[Y]:
                return builtins.map(selector, iter)
            return inner

        @Pipe
        @staticmethod
        def filter(predicate: Callable[[T], bool]) -> Callable[[Iterable[T]], Generator[T, None, None]]:
            def inner(iter: Iterable[T]) -> Generator[T, None, None]:
                return (x for x in iter if predicate(x))
            return inner

        @Pipe
        @staticmethod
        def echo_each(callback: Callable[[T], None]) -> Callable[[Iterable[T]], Iterable[T]]:
            def inner(iter: Iterable[T]) -> Iterable[T]:
                return (
                    iter
                    | PipeUtil.OfIter[T]
                    .map(lambda each: 
                         each
                        | PipeUtil.Of[T]
                        .echo(callback)
                    )
                )
            return inner

        @Pipe
        @staticmethod
        def to_list() -> Callable[[Iterable[T]], List[T]]:
            """
            Consumes the iterable into a list
            """
            def inner(iter: Iterable[T]) -> List[T]:
                return list(iter)
            return inner

        @Pipe
        @staticmethod
        def consume_until_error(cond_callback: Callable[[T], bool]) -> Callable[[Iterable[T]], Tuple[List[T], Optional[T]]]:
            """
            Consumes the Iterator into a List checking all the items with cond_callback and returns
            with the first encountered error item or consumes the whole list.
            """
            def inner(obj: Iterable[T]) -> Tuple[List[T], Optional[T]]:
                result: List[T] = []

                for item in obj:
                    if cond_callback(item):
                        result.append(item)
                    else:
                        return (result, item)

                return (result, None)

            return inner

        @Pipe
        @staticmethod
        def first_error(cond_callback: Callable[[T], bool]) -> Callable[[Iterable[T]], Optional[T]]:
            """
            Consumes until a first error is encountered and returns it if present
            """
            def inner(obj: Iterable[T]) -> Optional[T]:
                for item in obj:
                    if not cond_callback(item):
                        return item
                return None

            return inner

        @Pipe
        @staticmethod
        def first_not_none() -> Callable[[Iterable[Optional[T]]], Optional[T]]:
            """
            Consumes until a first error is encountered and returns it if present
            """
            def inner(obj: Iterable[Optional[T]]) -> Optional[T]:
                for item in obj:
                    if item is not None:
                        return item
                return None

            return inner

        @Pipe
        @staticmethod
        def consume_once() -> Callable[[Iterable[T]], T]:
            """
            Consumes once only from the iterator
            """
            def inner(iterable: Iterable[T]) -> T:
                return next(iter(iterable))
            return inner

        @Pipe
        @staticmethod
        def take(n: int) -> Callable[[Iterable[T]], Generator[T, None, None]]:
            """
            Consumes the next `n` items from the iterable or raises StopIteration
            """
            def inner(iterable: Iterable[T]) -> Generator[T, None, None]:
                for _ in range(n):
                    yield next(iter(iterable))
            return inner

        @Pipe
        @staticmethod
        def reduce(initial: Y, function: Callable[[Y, T], Y]) -> Callable[[Iterable[T]], Y]:
            """
            For early termination: use stop_iter with the accumulator value.
            """
            def inner(iter: Iterable[T]) -> Y:
                try:
                    return functools.reduce(function, iter, initial)
                except StopIteration as e:
                    return cast(Y, e.args[0])
            return inner

        @Pipe
        @staticmethod
        def check(cond_callback: Callable[[T], bool]) -> Callable[[Iterable[T]], Generator[Result[T, T], None, None]]:
            """
            Checks that each item matches a condition, yielding an Ok[T] or Err[T]
            """
            def inner(source: Iterable[T]) -> Generator[Result[T, T], None, None]:
                try:
                    while True:
                        item = next(iter(source))
                        yield (
                            Ok(item) if cond_callback(item) else
                            Err(item)
                        )
                except StopIteration:
                    pass

            return inner

        @Pipe
        @staticmethod
        def check_until_error(cond_callback: Callable[[T], bool]) -> Callable[[Iterable[T]], Generator[Result[T, T], None, None]]:
            """
            Checks that each item matches a condition, yielding an Ok[T] or Err[T] and stops at the 
            first Err[T].
            """
            def inner(source: Iterable[T]) -> Generator[Result[T, T], None, None]:
                try:
                    while True:
                        item = next(iter(source))

                        if cond_callback(item):
                            yield Ok(item)
                        else:
                            yield Err(item)
                            break
                except StopIteration:
                    pass

            return inner

        @Pipe
        @staticmethod
        def check_or_fail(cond_callback: Callable[[T], bool], 
                          opt_error_message_callback: Optional[Callable[[T], str]]=None
                          ) -> Callable[[Iterable[T]], Generator[Union[T, NoReturn], None, None]]:
            """
            Checks that a condition matches for source data T, or raises an assertion error with an optional 
            message. 
            """
            def inner(source: Iterable[T]) -> Generator[Union[T, NoReturn], None, None]:
                for item in source:
                    if opt_error_message_callback is not None:
                        assert cond_callback(item), opt_error_message_callback(item)
                    else:
                        assert cond_callback(item)
                    
                    yield item

            return inner


    class OfStr:
        @Pipe
        @staticmethod
        def scan_map(scan: Callable[[str], Tuple[Y, int]]) -> Callable[[str], Generator[Y, None, None]]:
            """
            A generator pipe function that consumes by variable amounts per each scan. May be terminated
            early with stop_iter.
            """
            def inner(buf: str)-> Generator[Y, None, None]:
                try:
                    while len(buf) != 0:
                        res, advance = scan(buf)
                        yield res
                        buf = buf[advance:]
                except StopIteration as e:
                    yield e.args[0]
            return inner

    class OfList(Generic[T]):
        @Pipe
        @staticmethod
        def scan_map(scan: Callable[[List[T]], Tuple[Y, int]]) -> Callable[[List[T]], Generator[Y, None, None]]:
            """
            A generator pipe function that consumes by variable amounts per each scan. May be terminated
            early with stop_iter.
            """
            def inner(buf: List[T])-> Generator[Y, None, None]:
                try:
                    while len(buf) != 0:
                        res, advance = scan(buf)
                        yield res
                        buf = buf[advance:]
                except StopIteration as e:
                    yield e.args[0]
            return inner

    class Of(Generic[T]):
        """
        For pipe functions utilizing just one generic variable T
        """

        @Pipe
        @staticmethod
        def echo(callback: Callable[[T], None]) -> Callable[[T], T]:
            def inner(obj: T) -> T:
                callback(obj)
                return obj
            return inner

        @Pipe
        @staticmethod
        def then_stop_iter() -> Callable[[T], NoReturn]:
            """
            Piped version of stop_iter. Make sure not to mix them. Functioned with @pipe.Pipe need to
            have their first input passed via |
            """
            def inner(val: T) -> NoReturn:
                raise StopIteration(val)
            return inner
    
        @Pipe
        @staticmethod
        def to(callback: Callable[[T], Y]) -> Callable[[T], Y]:
            def inner(obj: T) -> Y:
                return callback(obj)
            return inner

        @Pipe
        @staticmethod
        def check(cond_callback: Callable[[T], bool]) -> Callable[[T], Result[T, Tuple[()]]]:
            """
            Checks that a condition matches for the source object T, and wraps it in Ok if so or
            transforms it to an Err(()) otherwise
            """
            def inner(obj: T) -> Result[T, Tuple[()]]:
                return (
                    Ok(obj) if cond_callback(obj) else
                    Err(())
                )
            return inner

        @Pipe
        @staticmethod
        def then_check(cond_callback: Callable[[T], bool]) -> Callable[[Result[T, Tuple[()]]], Result[T, Tuple[()]]]:
            """
            Unwraps the source result into a T, and then performs an additional check of `cond_callback` or
            just passes along the empty error
            """
            def inner(obj: Result[T, Tuple[()]]) -> Result[T, Tuple[()]]:
                return (
                    obj if isinstance(obj, Err) else
                    obj if cond_callback(obj.unwrap()) else
                    Err(())
                )
            return inner

        @Pipe
        @staticmethod
        def check_not_none() -> Callable[[Optional[T]], Result[T, Tuple[()]]]:
            """
            Checks that Optional[T] is not None, returning a Result[T, Tuple[()]] with an empty error
            """
            def inner(obj: Optional[T]) -> Result[T, Tuple[()]]:
                return (
                    Ok(obj) if obj is not None else
                    Err(())
                )
            return inner

        @Pipe
        @staticmethod
        def check_or_fail(cond_callback: Callable[[T], bool], 
                          opt_error_message_callback: Optional[Callable[[T], str]]=None
                          ) -> Callable[[T], Union[T, NoReturn]]:
            """
            Checks that a condition matches for source data T, or raises an assertion error with an optional 
            message. 
            """
            def inner(obj: T) -> Union[T, NoReturn]:
                if opt_error_message_callback is not None:
                    assert cond_callback(obj), opt_error_message_callback(obj)
                else:
                    assert cond_callback(obj)
                
                return obj

            return inner


    class OfResult(Generic[T, E]):
        """
        For pipe functions working with result types Result[T, E]
        """

        @Pipe
        @staticmethod
        def check(cond_callback: Callable[[T], bool], error_callback: Callable[[T], E]) -> Callable[[T], Result[T, E]]:
            """
            Checks that a condition matches for the source object T, and wraps it in Ok if so or
            transforms it to an Err[E] according to `error_callback` otherwise
            """
            def inner(obj: T) -> Result[T, E]:
                return (
                    Ok(obj) if cond_callback(obj) else
                    Err(error_callback(obj))
                )
            return inner

        @Pipe
        @staticmethod
        def then_check(cond_callback: Callable[[T], bool], error_callback: Callable[[T], E]) -> Callable[[Result[T, E]], Result[T, E]]:
            """
            Chains with `check` for multiple checks on an object. If it failed the prior checks, it short-circuits, 
            otherwise it checks based on a new cond_callback.
            """
            def inner(obj: Result[T, E]) -> Result[T, E]:
                return (
                    obj if isinstance(obj, Err) else
                    obj if cond_callback(obj.unwrap()) else
                    Err(error_callback(obj.unwrap()))
                )
            return inner

        @Pipe
        @staticmethod
        def check_using(select_callback: Callable[[T], Optional[Y]], error_callback: Callable[[Y], E]) -> Callable[[T], Result[T, E]]:
            """
            Checks that a condition matches for the source object T, and wraps it in Ok if so or
            transforms it to an Err[E] according to `error_callback` otherwise. 

            :param select_callback: This returns None if the object is valid, or some result to be checked by error_callback
            :param error_callback: Uses the none result of select_callback to determine the error
            """
            def inner(obj: T) -> Result[T, E]:
                check_select = select_callback(obj)
                return (
                    Ok(obj) if check_select is None else
                    Err(error_callback(check_select))
                )
            return inner

        @Pipe
        @staticmethod
        def then_check_using(select_callback: Callable[[T], Optional[Y]], error_callback: Callable[[Y], E]) -> Callable[[Result[T, E]], Result[T, E]]:
            """
            For a Result[T, E] source, checks using `select_callback` and determines Ok[T] on None or
            passes the result to `error_callback` to determine the error Err[E]
            """
            def inner(obj: Result[T, E]) -> Result[T, E]:
                if isinstance(obj, Err):
                    return obj
                else:
                    check_select = select_callback(obj.unwrap())

                    return (
                        obj if check_select is None else
                        Err(error_callback(check_select))
                    )

            return inner

        @Pipe
        @staticmethod
        def check_not_none(error_callback: Callable[[], E]) -> Callable[[Optional[T]], Result[T, E]]:
            """
            Checks that a condition matches for the source object T, and wraps it in Ok if so or
            transforms it to an Err[E] according to `error_callback` otherwise
            """
            def inner(obj: Optional[T]) -> Result[T, E]:
                return (
                    Ok(obj) if obj is not None else
                    Err(error_callback())
                )
            return inner

        @Pipe
        @staticmethod
        def then_check_or_fail(cond_callback: Callable[[T], bool], opt_error_message_callback: Optional[Callable[[T], str]]=None
                               ) -> Callable[[Result[T, E]], Union[Result[T, E], NoReturn]]:
            """
            This is only applied when the source data is Ok[T], asserting a condition on it with
            an optional message. It will not touch Err[E].
            """
            def inner(obj: Result[T, E]) -> Union[Result[T, E], NoReturn]:
                if isinstance(obj, Err):
                    return obj
                else:
                    if opt_error_message_callback is not None:
                        assert cond_callback(obj.unwrap()), opt_error_message_callback(obj.unwrap())
                    else:
                        assert cond_callback(obj.unwrap())
                
                    return obj

            return inner

        @Pipe
        @staticmethod
        def on_ok(callback: Callable[[T], Y]) -> Callable[[Result[T, E]], Result[Y, E]]:
            """
            This unwraps the results in case of Ok[T] for `callback` to transform T -> Y. In the case
            of Err[E], it just passes along the error.
            """
            def inner(res: Result[T, E]) -> Result[Y, E]:
                if res.is_err():
                    # We pass the error along, but type cast the Ok
                    return cast(Result[Y, E], res)

                return Ok(callback(res.unwrap()))
            return inner

        @Pipe
        @staticmethod
        def on_err(callback: Callable[[E], Optional[T]]) -> Callable[[Result[T, E]], Result[T, E]]:
            """
            In case of error, this allows it to be corrected back as an Ok[T] by `callback` if the
            result is not None.
            """
            def inner(res: Result[T, E]) -> Result[T, E]:
                if res.is_ok():
                    # The result is ok, nothing to do but pass it along
                    return res

                # Try to Transform the error into ok
                opt_new_res = callback(res.unwrap_err())
                return (
                    Ok(opt_new_res) if opt_new_res is not None
                    else res
                )

            return inner

        @Pipe
        @staticmethod
        def unwrap_ok_or_none() -> Callable[[Result[T, E]], Optional[T]]:
            def inner(res: Result[T, E]) -> Optional[T]:
                return (
                    None if res.is_err() else 
                    res.unwrap()
                )
            return inner

        @Pipe
        @staticmethod
        def map_error(callback: Callable[[E], YE]) -> Callable[[Result[T, E]], Result[T, YE]]:
            """
            Unwraps the result and maps the error types based on callback: E -> YE
            """
            def inner(res: Result[T, E]) -> Result[T, YE]:
                if res.is_ok():
                    # Nothing is done but signaling a type change
                    return cast(Result[T, YE], res)
                
                # Transform into a new error type
                return Err(callback(res.unwrap_err()))

            return inner
        

    class OfResultIter(Generic[T, E]):
        """
        For pipe functions working with an iterator of results
        """

        @Pipe
        @staticmethod
        def check(cond_callback: Callable[[T], bool], error_callback: Callable[[T], E]) -> Callable[[Iterable[T]], Generator[Result[T, E], None, None]]:
            """
            Checks that a condition matches for the source objects T, and wraps it in Ok if so or
            transforms it to an Err[E] according to `error_callback` otherwise
            """
            def inner(source: Iterable[T]) -> Generator[Result[T, E], None, None]:
                for item in source:
                    yield (
                        Ok(item) if cond_callback(item) else
                        Err(error_callback(item))
                    )
            return inner

        @Pipe
        @staticmethod
        def then_check(cond_callback: Callable[[T], bool], error_callback: Callable[[T], E]) -> Callable[[Iterable[Result[T, E]]], Generator[Result[T, E], None, None]]:
            """
            Chains with `check` for multiple checks on an object. If it failed the prior checks, it short-circuits, 
            otherwise it checks based on a new cond_callback.
            """
            def inner(source: Iterable[Result[T, E]]) -> Generator[Result[T, E], None, None]:
                for item in source:
                    yield (
                        item if isinstance(item, Err) else
                        item if cond_callback(item.unwrap()) else
                        Err(error_callback(item.unwrap()))
                    )
            return inner

        @Pipe
        @staticmethod
        def check_using(select_callback: Callable[[T], Optional[Y]], error_callback: Callable[[Y], E]
                        ) -> Callable[[Iterable[T]], Generator[Result[T, E], None, None]]:
            """
            Checks that a condition matches for the source object T, and wraps it in Ok if so or
            transforms it to an Err[E] according to `error_callback` otherwise. 

            :param select_callback: This returns None if the object is valid, or some result to be checked by error_callback
            :param error_callback: Uses the none result of select_callback to determine the error
            """
            def inner(source: Iterable[T]) -> Generator[Result[T, E], None, None]:
                for item in source:
                    check_select = select_callback(item)
                    yield (
                        Ok(item) if check_select is None else
                        Err(error_callback(check_select))
                    )
            return inner

        @Pipe
        @staticmethod
        def then_check_using(select_callback: Callable[[T], Optional[Y]], error_callback: Callable[[Y], E]
                             ) -> Callable[[Iterable[Result[T, E]]], Generator[Result[T, E], None, None]]:
            """
            For a Result[T, E] source, checks using `select_callback` and determines Ok[T] on None or
            passes the result to `error_callback` to determine the error Err[E]
            """
            def inner(source: Iterable[Result[T, E]]) -> Generator[Result[T, E], None, None]:
                for item in source:
                    if isinstance(item, Err):
                        yield item
                    else:
                        check_select = select_callback(item.unwrap())

                        yield (
                            item if check_select is None else
                            Err(error_callback(check_select))
                        )

            return inner

        @Pipe
        @staticmethod
        def check_not_none(error_callback: Callable[[], E]) -> Callable[[Iterable[Optional[T]]], Generator[Result[T, E], None, None]]:
            """
            Checks that a condition matches for the source object T, and wraps it in Ok if so or
            transforms it to an Err[E] according to `error_callback` otherwise
            """
            def inner(source: Iterable[Optional[T]]) -> Generator[Result[T, E], None, None]:
                for item in source:
                    yield (
                        Ok(item) if item is not None else
                        Err(error_callback())
                    )
            return inner

        @Pipe
        @staticmethod
        def then_check_or_fail(cond_callback: Callable[[T], bool], opt_error_message_callback: Optional[Callable[[T], str]]=None
                               ) -> Callable[[Iterable[Result[T, E]]], Generator[Union[Result[T, E], NoReturn], None, None]]:
            """
            This is only applied when the source data is Ok[T], asserting a condition on it with
            an optional message. It will not touch Err[E].
            """
            def inner(source: Iterable[Result[T, E]]) -> Generator[Union[Result[T, E], NoReturn], None, None]:
                for item in source:
                    if isinstance(item, Err):
                        yield item
                    else:
                        if opt_error_message_callback is not None:
                            assert cond_callback(item.unwrap()), opt_error_message_callback(item.unwrap())
                        else:
                            assert cond_callback(item.unwrap())
                    
                        yield item

            return inner

        @Pipe
        @staticmethod
        def on_ok(callback: Callable[[T], Y]) -> Callable[[Iterable[Result[T, E]]], Generator[Result[Y, E], None, None]]:
            """
            Processes transformations only for Oks: T -> Y and consumes the Errs as is.
            """
            def inner(source: Iterable[Result[T, E]]) -> Generator[Result[Y, E], None, None]:
                for res in source:
                    if res.is_err():
                        # We pass the error along, but type cast the Ok
                        yield cast(Result[Y, E], res)
                    else:
                        yield Ok(callback(res.unwrap()))
            return inner

        @Pipe
        @staticmethod
        def on_err(callback: Callable[[E], Optional[T]]) -> Callable[[Iterable[Result[T, E]]], Generator[Result[T, E], None, None]]:
            """
            Processes transformations only for Errs: E -> T and consumes the Oks as is.
            """
            def inner(source: Iterable[Result[T, E]]) -> Generator[Result[T, E], None, None]:
                for res in source:
                    if res.is_ok():
                        # The result is ok, nothing to do but pass it along
                        yield res
                    else:
                        # Try to Transform the error into ok
                        opt_new_res = callback(res.unwrap_err())
                        yield (
                            Ok(opt_new_res) if opt_new_res is not None
                            else res
                        )

            return inner

        @Pipe
        @staticmethod
        def unwrap_ok_or_none() -> Callable[[Iterable[Result[T, E]]], Generator[Optional[T], None, None]]:
            def inner(source: Iterable[Result[T, E]]) -> Generator[Optional[T], None, None]:
                for res in source:
                    yield (
                        None if res.is_err() else 
                        res.unwrap()
                    )
            return inner

        @Pipe
        @staticmethod
        def map_error(callback: Callable[[E], YE]) -> Callable[[Iterable[Result[T, E]]], Generator[Result[T, YE], None, None]]:
            """
            Unwraps the result and maps the error types based on callback: E -> YE
            """
            def inner(source: Iterable[Result[T, E]]) -> Generator[Result[T, YE], None, None]:
                for res in source:
                    if res.is_ok():
                        # Nothing is done but signaling a type change
                        yield cast(Result[T, YE], res)
                    else:
                        # Transform into a new error type
                        yield Err(callback(res.unwrap_err()))

            return inner
        

        @Pipe
        @staticmethod
        def unwrap_oks_only() -> Callable[[Iterable[Result[T, E]]], Iterable[T]]:
            """
            Given an Iterable[Result[T, E]], filters for the ok results and unwraps them into
            Iterable[T]
            Consumes Result[T, E] -> List[T], bypassing errors
            """
            def inner(source: Iterable[Result[T, E]]) -> Iterable[T]:
                return (
                    source

                    | PipeUtil.OfIter[Result[T, E]]
                    .filter(lambda res: res.is_ok())

                    | PipeUtil.OfIter[Result[T, E]]
                    .map(lambda res: res.unwrap())
                )

            return inner

        @Pipe
        @staticmethod
        def unwrap_errs_only() -> Callable[[Iterable[Result[T, E]]], Iterable[E]]:
            """
            Given an Iterable[Result[T, E]], filters for the ok results and unwraps them into
            Iterable[T]
            Consumes Result[T, E] -> List[T], bypassing errors
            """
            def inner(source: Iterable[Result[T, E]]) -> Iterable[E]:
                return (
                    source

                    | PipeUtil.OfIter[Result[T, E]]
                    .filter(lambda res: res.is_err())

                    | PipeUtil.OfIter[Result[T, E]]
                    .map(lambda res: res.unwrap_err())
                )

            return inner

        @Pipe
        @staticmethod
        def unwrap_until_error() -> Callable[[Iterable[Result[T, E]]], Generator[Optional[T], None, None]]:
            """
            Keeps unwrapping T from Ok[T] results until it encounters an Err[E]. If consumed to
            list and no Ok[T] was encountered, it would create []
            """
            def inner(source: Iterable[Result[T, E]]) -> Generator[Optional[T], None, None]:
                while True:
                    item = next(iter(source))

                    if item.is_err():
                        break
                    
                    yield item.unwrap()

            return inner

        @Pipe
        @staticmethod
        def unwrap_until_error_including() -> Callable[[Iterable[Result[T, E]]], Tuple[List[T], Result[Tuple[()], E]]]:
            """
            Consumes all oks into a list result and if encountered an error
            stops consuming and returns the list and the first error.
            Otherwise consumes all to a list and returns it with Ok(())
            """
            def inner(source: Iterable[Result[T, E]]) -> Tuple[List[T], Result[Tuple[()], E]]:
                result: List[T] = []
                error: Result[Tuple[()], E] = Ok(())

                for item in source:
                    if item.is_err():
                        error = cast(Result[Tuple[()], E], item)
                        break

                    result.append(item.unwrap())
                
                return (result, error)

            return inner

        @Pipe
        @staticmethod
        def unwrap_first_ok() -> Callable[[Iterable[Result[T, E]]], Optional[T]]:
            """
            Consumes the source Iterable[Result[T, E]] until it finds the first ok
            """
            def inner(source: Iterable[Result[T, E]]) -> Optional[T]:
                for item in source:
                    if item.is_ok():
                        return item.unwrap()
                return None

            return inner




    class OfUnpack2(Generic[T1, T2]):
        @Pipe
        @staticmethod
        def unpack(callback: Callable[[T1, T2], Y]) -> Callable[[Tuple[T1, T2]], Y]:
            def inner(tup: Tuple[T1, T2]) -> Y:
                return callback(tup[0], tup[1])
            return inner

    class OfUnpack3(Generic[T1, T2, T3]):
        @Pipe
        @staticmethod
        def unpack(callback: Callable[[T1, T2, T3], Y]) -> Callable[[Tuple[T1, T2, T3]], Y]:
            def inner(tup: Tuple[T1, T2, T3]) -> Y:
                return callback(tup[0], tup[1], tup[2])
            return inner

    class OfUnpack4(Generic[T1, T2, T3, T4]):
        @Pipe
        @staticmethod
        def unpack(callback: Callable[[T1, T2, T3, T4], Y]) -> Callable[[Tuple[T1, T2, T3, T4]], Y]:
            def inner(tup: Tuple[T1, T2, T3, T4]) -> Y:
                return callback(tup[0], tup[1], tup[2], tup[3])
            return inner

    # Pipe functions requiring no generics do not need Of...[]

    @Pipe
    @staticmethod
    def to_records() -> Callable[[Dict[str, List[Any]]], Result[List[Dict[str, Any]], str]]:
        """
        Turns a dictionary of lists into a list of dictionaries (records)
        """
        def inner(dic: Dict[str, List[Any]]) -> Result[List[Dict[str, Any]], str]:
            def n_elems(d: Dict[str, Any]) -> int:
                """
                Get the length of the first list in the dictionary. This needs to match for all.
                """
                return len(list(d.items())[0][1])

            def all_dic_keys_list_of_same_len(dic: Dict[str, List[Any]], n: int) -> bool:
                return all([len(v) == n for v in dic.values()])

            return (
                dic

                | PipeUtil.OfResult[Dict[str, List[Any]], str]
                .check(lambda dic: len(list(dic.keys())) > 0,
                       lambda _: 'Empty dict')
                
                | PipeUtil.OfResult[Dict[str, List[Any]], str]
                .on_ok(lambda dic: (dic, list(dic.keys()), n_elems(dic)))

                | PipeUtil.OfResult[Tuple[Dict[str, List[Any]], List[str], int], str]
                .then_check(lambda dic_keys_n: all_dic_keys_list_of_same_len(dic_keys_n[0], dic_keys_n[2]),
                            lambda _: 'Lists not of same size')

                | PipeUtil.OfResult[Tuple[Dict[str, List[Any]], List[str], int], str]
                .on_ok(lambda dic_keys_n:
                    dic_keys_n
                    | PipeUtil.OfUnpack3[Dict[str, List[Any]], List[str], int]
                    .unpack(lambda d, ks, n:
                        [{k: d[k][i] for k in ks} for i in range(n)]
                    )
                )
            )
        return inner


def stop_iter(val: T) -> NoReturn:
    raise StopIteration(val)

if __name__ == '__main__':
    pu = PipeUtil


    # print(
    #     [1, 2, 3] 
    #     | pu.OfIter[int].map(lambda n: n + 3)
    #     | pu.OfIter[int].check(lambda n: n != 4)
    #     | pu.OfIter[Result[int, int]].to_list()
    # )

    from result import Result, Ok, Err
    pipe = PipeUtil

    print(
        (4, 2, 'Hello ')
        | pipe.OfUnpack3[int, str, int].unpack(
            lambda num_spaces, repeat, text: '"' + ' ' * num_spaces + repeat * text + '"'
        )
    )
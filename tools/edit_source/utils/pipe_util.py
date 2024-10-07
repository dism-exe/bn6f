import pipe
from result import Result, Ok, Err
from typing import Any, Callable

class PipeUtil:
    @pipe.Pipe
    @staticmethod
    def ensure(obj, cond_callback) -> Result[Any, None]:
        if type(obj) in [Ok, Err]:
            if obj.is_err():
                return obj
            else:
                obj = obj.unwrap()
        if cond_callback(obj):
            return Ok(obj)
        return Err(())

    @pipe.Pipe
    @staticmethod
    def ensure_or_err(obj, cond_callback, error_callback=None) -> Result[Any, Any]:
        if type(obj) in [Ok, Err]:
            if obj.is_err():
                return obj
            else:
                obj = obj.unwrap()
        if cond_callback(obj):
            return Ok(obj)
        return Err(error_callback(obj))

    @pipe.Pipe
    @staticmethod
    def ensure_or_fail(obj, cond_callback: Callable[[Any], bool], 
                       error_message_callback: Callable[[Any], str]=None) -> Any:
        if type(obj) in [Ok, Err]:
            obj = obj.unwrap()

        assert(cond_callback(obj), error_message_callback(obj))
        return obj

    @pipe.Pipe
    @staticmethod
    def on_ok(iterable_res: Result[Any, Any], callable: Callable[[Any], Any]) -> Result[Any, Any]:
        if iterable_res.is_err():
            return iterable_res
        result = callable(iterable_res.unwrap())
        if type(result) in [Ok, Err]:
            return result
        return Ok(result)

    @pipe.Pipe
    @staticmethod
    def unwrap_ok_or_none(iterable_res: Result[Any, None]):
        if iterable_res.is_err():
            return None
        else:
            return iterable_res.unwrap()
    
    @pipe.Pipe
    @staticmethod
    def unpack_tup(tup, caller):
        return caller(*tup)

    @pipe.Pipe
    @staticmethod
    def to_records(dict) -> Result[dict, str]:
        def n_elems(d):
            return len(list(d.items())[0][1])
        def all_dict_keys_list_of_same_len(d, _, n):
            return all([len(v) == n for v in d.values()])

        return (
            dict
            | PipeUtil.ensure_or_err(lambda d: len(list(d.keys())) > 0,
                                     lambda _: 'Empty dict')
            | PipeUtil.on_ok(lambda d:
                d 
                | pipe.Pipe(lambda d: (d, list(d.keys()), n_elems(d)))
                | PipeUtil.ensure_or_err(lambda d_ks_n: all_dict_keys_list_of_same_len(*d_ks_n),
                                         lambda _: 'Lists not of same size')
            )
            | PipeUtil.on_ok(lambda d:
                d 
                | PipeUtil.unpack_tup(
                    lambda d, ks, n: [{k: d[k][i] for k in ks} 
                                    for i in range(n)])
                )
                
        )

    @pipe.Pipe
    @staticmethod
    def echo(obj, echo_cb, selector_callback=None):
        if selector_callback:
            obj = selector_callback(obj)
        echo_cb(obj)
        return obj
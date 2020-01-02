def cache_to_file(func, cache_path, *args, **kwargs):
    """
    caches the result of :func: to a file so that it doesn't have to be computed more than once
    :param func: function with expensive computation
    :param cache_path: file to cache to`
    :param args: args to :func:
    :param kwargs: kwargs to :func:
    :return: results of func as cached in :path_name:
    """
    import os
    import json
    if os.path.exists(cache_path):
        # return deserialized output
        with open(cache_path, 'r') as f:
            return json.load(f)
    else:
        # compute and serialize to cache
        res = func(*args, **kwargs)
        with open(cache_path, 'w') as f:
            json.dump(res, f)
        return res


def load_cache_file(cache_path):
    import os
    import json
    if os.path.exists(cache_path):
        # return deserialized output
        with open(cache_path, 'r') as f:
            return json.load(f)
    else:
        return None
def str_starts_with(s, string_list):
    return reduce(lambda out, flag: out | flag,
              map(lambda elem: s.startswith(elem), string_list))


def found_in_any(elem, list_of_lists):
    for lst in list_of_lists:
        if elem in lst:
            return True
    return False
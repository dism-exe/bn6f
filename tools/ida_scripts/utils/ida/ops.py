import idc


def next_item_ea(ea, size):
    i = ea
    while i < ea+size:
        item_size = idc.get_item_size(i)
        yield i
        i += item_size


def delete_items(ea, size):
    for item_ea in next_item_ea(ea, size):
        idc.del_items(item_ea)


def delete_and_make_function(ea, func_size, func_name, is_thumb=1):
    print('{:X} <{}>: make function'.format(ea, func_name))
    # delete items and make sure that the area is thumb or arm
    for item_ea in next_item_ea(ea, func_size):
        idc.del_items(item_ea)  
        idc.SetRegEx(item_ea, 'T', is_thumb, idc.SR_user)
    idc.MakeFunction(ea)


def delete_and_make_array(ea, size, label):
    if not size:
        return

    delete_items(ea, size)
    status = idc.make_array(ea, size)

    print('{:X} <{}>: make array ({})'.format(ea, label, status))
    if idc.get_name(ea) == '':
        idc.set_name(ea, str(label))


def force_item_operation(ea, size, op, *args, **kwargs):
    """
    This forces a change to an item, like MakeWord, in the database
    :param ea: linear address of item
    :param size: size of the item in question -- or how much to delete if the operation is unsuccessful
    :param op: the operation to apply. Expected to return a success status
    :param args: arguments to op
    :param kwargs: kwargs to op
    :return: success of op
    """
    success = op(*args, **kwargs)
    if not success:
        delete_items(ea, size)
        success = op(*args, **kwargs)
    return success

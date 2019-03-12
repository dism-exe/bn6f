def usrch(units, id):
    """
    id can be name of ea
    """
    for u in units:
        if type(id) is int:
            if 'ea' not in u.keys(): continue
            if u['ea'] == id: return u
        elif type(id) is str:
            if 'name' not in u.keys(): continue
            if u['name'] == id: return u
        else:
            logging.error("invalid id type: " + type(id))


def xrefs_to(units, id):
    """
    id can be name of ea
    returns ea of unit
    """
    # cache calculations, only recompute when necessary
    if 'units' not in xrefs_to.__dict__:
        xrefs_to.units = units
    if 'xrefs' not in xrefs_to.__dict__ or xrefs_to.units != units:
        xrefs_to.xrefs = {}
        for u in units:
            if 'xrefs_from' not in u.keys(): continue
            xrefs_from = list(u['xrefs_from'])
            if u['id'] == 'F' and 'pool' in u.keys():
                for pool_unit in u['pool']:
                    xrefs_from += pool_unit['xrefs_from']
            for xref_ea, xref_name in xrefs_from:
                if xref_ea not in xrefs_to.xrefs.keys():
                    xrefs_to.xrefs[xref_ea] = []
                if 'ea' in u.keys():
                    xrefs_to.xrefs[xref_ea] = u['ea']
                else:
                    logging.warning('no ea found in the following unit:' + u)
    if type(id) is str:
        id = usrch(units, id)['ea']
    if id in xrefs_to.xrefs.keys():
        return xrefs_to.xrefs[id]


def dead_units(units):
    out = []
    for u in units:
        if 'ea' not in u.keys(): continue
        if not  xrefs_to(units, u['ea']) and not  xrefs_to(units, u['ea']+1):
            out.append(u)
    return out
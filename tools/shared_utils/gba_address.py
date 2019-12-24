if __name__ == '__main__': __package__ = 'shared_utils'

from .include import gba_architecture


class InvalidGbaAddressException(Exception): pass


def address_segment(address):
    # type: (int) -> int
    """
    extracts the segment bitfield (ROM, EWRAM, IWRAM, ...) from an address or returns 0 if none are contained
    :param address: an address that contains a segment bitfield
    :return: the segment mask

    # Examples
    >>> hex(address_segment(0x8AABBCC))
    '0x8000000'
    >>> hex(address_segment(0x2005000))
    '0x2000000'
    """
    return address & gba_architecture.AddressSpace.SEGMENT_NIBBLE



def rom_address(address):
    # type: (int) -> int
    """
    returns the ROM address of a non-segmented address.
    :raise InvalidGbaAddressException: if $address already contains another segment
    :param address: non-segmented ROM address
    :return: the address, with a ROM segment

    # Examples
    >>> hex(rom_address(0x0))
    '0x8000000'
    >>> check_raises(lambda: rom_address(0x2000000), InvalidGbaAddressException)
    True
    """
    if address_segment(address) not in [0, gba_architecture.AddressSpace.PAK_ROM_START]:
        raise InvalidGbaAddressException('invalid ROM address: 0x{address:07X}'.format(address=address))
    return address | gba_architecture.AddressSpace.PAK_ROM_START


def is_rom_address(address):
    # type: (int) -> bool
    return address_segment(address) == gba_architecture.AddressSpace.PAK_ROM_START


def iwram_address(address):
    # type: (int) -> int
    if address_segment(address) not in [0, gba_architecture.AddressSpace.IWRAM[0]]:
        raise InvalidGbaAddressException('invalid IWRAM address: 0x{address:07X}'.format(address=address))
    return address | gba_architecture.AddressSpace.IWRAM


def is_iwram_address(address):
    # type: (int) -> bool
    return address_segment(address) == gba_architecture.AddressSpace.IWRAM[0]


def ewram_address(address):
    # type: (int) -> int
    if address_segment(address) not in [0, gba_architecture.AddressSpace.EWRAM[0]]:
        raise InvalidGbaAddressException('invalid EWRAM address: 0x{address:07X}'.format(address=address))
    return address | gba_architecture.AddressSpace.EWRAM


def is_ewram_address(address):
    # type: (int) -> bool
    return address_segment(address) == gba_architecture.AddressSpace.EWRAM[0]


if __name__ == '__main__':
    import doctest
    def check_raises(cb, exp):
        try:
            cb()
            return False
        except exp:
            return True
    import unittest
    doctest.testmod()

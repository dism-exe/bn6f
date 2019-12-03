from .include import gba_architecture


class InvalidGbaAddressException(Exception): pass


def address_segment(address):
    # type: (int) -> int
    return address & gba_architecture.AddressSpace.SEGMENT_NIBBLE


def rom_address(address):
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



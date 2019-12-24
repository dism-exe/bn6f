def bytes_to_word(bytes):
    # type: (List[int, 4]) -> int or ValueError
    """
    converts a buffer to an integer
    :param bytes: buffer of 4 elements
    :return: the buffer as an integer or ValueError if the buffer doesn't contain enough data for a word
    """
    if len(bytes) < 4:
        return ValueError
    return bytes[0] + (bytes[1] << 8) + (bytes[2] << 16) + (bytes[3] << 24)
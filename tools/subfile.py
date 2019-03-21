# generates
if __name__ == '__main__':
    import sys
    if len(sys.argv) < 5:
        print('usage: subfile <original_file> <new_path> <start_addr> <end_addr>')
    # ~0x8000000 in case of ROM addresses. accounting for this as it's a common task
    start_addr = int(sys.argv[3], 16) & ~0x8000000
    end_addr = int(sys.argv[4], 16) & ~0x8000000

    original_file = open(sys.argv[1], 'rb')
    new_file = open(sys.argv[2], 'wb')

    original_file.seek(start_addr)
    bytes = original_file.read(end_addr-start_addr)
    new_file.write(bytes)
    original_file.close()
    new_file.close()
# SPDX-License-Identifier: GPL-3.0-only
"""Read DEX class definitions without executing archive code."""
import struct

def dex_classes(data):
    string_count, string_offset = struct.unpack_from("<II", data, 56)
    type_count, type_offset = struct.unpack_from("<II", data, 64)
    class_count, class_offset = struct.unpack_from("<II", data, 96)
    strings = []
    for i in range(string_count):
        pos = struct.unpack_from("<I", data, string_offset + 4 * i)[0]
        while data[pos] & 128:
            pos += 1
        pos += 1
        strings.append(data[pos:data.index(b"\0", pos)].decode("utf-8", "replace"))
    types = [strings[struct.unpack_from("<I", data, type_offset + 4 * i)[0]]
             for i in range(type_count)]
    return {types[struct.unpack_from("<I", data, class_offset + 32 * i)[0]]
            for i in range(class_count)}

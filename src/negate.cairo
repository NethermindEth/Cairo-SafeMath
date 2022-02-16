# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_neg

func negate8{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100 - op
    return bitwise_and(raw_res, 0xff)
end
func negate16{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000 - op
    return bitwise_and(raw_res, 0xffff)
end
func negate24{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000 - op
    return bitwise_and(raw_res, 0xffffff)
end
func negate32{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000 - op
    return bitwise_and(raw_res, 0xffffffff)
end
func negate40{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000 - op
    return bitwise_and(raw_res, 0xffffffffff)
end
func negate48{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffff)
end
func negate56{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffff)
end
func negate64{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffff)
end
func negate72{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffff)
end
func negate80{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffff)
end
func negate88{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffff)
end
func negate96{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffff)
end
func negate104{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffff)
end
func negate112{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffff)
end
func negate120{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffff)
end
func negate128{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffff)
end
func negate136{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffff)
end
func negate144{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffff)
end
func negate152{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffff)
end
func negate160{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffff)
end
func negate168{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffff)
end
func negate176{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffff)
end
func negate184{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate192{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate200{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate208{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate216{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate224{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate232{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate240{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate248{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func negate256{range_check_ptr}(op : Uint256) -> (res : Uint256):
    return uint256_neg(op)
end

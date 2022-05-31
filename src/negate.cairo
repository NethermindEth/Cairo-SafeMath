# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_neg

func warp_negate8{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100 - op
    return bitwise_and(raw_res, 0xff)
end
func warp_negate16{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000 - op
    return bitwise_and(raw_res, 0xffff)
end
func warp_negate24{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000 - op
    return bitwise_and(raw_res, 0xffffff)
end
func warp_negate32{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000 - op
    return bitwise_and(raw_res, 0xffffffff)
end
func warp_negate40{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000 - op
    return bitwise_and(raw_res, 0xffffffffff)
end
func warp_negate48{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffff)
end
func warp_negate56{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffff)
end
func warp_negate64{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffff)
end
func warp_negate72{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffff)
end
func warp_negate80{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffff)
end
func warp_negate88{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffff)
end
func warp_negate96{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffff)
end
func warp_negate104{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffff)
end
func warp_negate112{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffff)
end
func warp_negate120{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffff)
end
func warp_negate128{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffff)
end
func warp_negate136{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffff)
end
func warp_negate144{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffff)
end
func warp_negate152{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffff)
end
func warp_negate160{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate168{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate176{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate184{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate192{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate200{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate208{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate216{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate224{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate232{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x10000000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate240{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x1000000000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate248{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    let raw_res = 0x100000000000000000000000000000000000000000000000000000000000000 - op
    return bitwise_and(raw_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_negate256{range_check_ptr}(op : Uint256) -> (res : Uint256):
    return uint256_neg(op)
end

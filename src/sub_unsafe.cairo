# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256

func warp_sub_unsafe8{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100 + lhs - rhs
    return bitwise_and(res, 0xff)
end
func warp_sub_unsafe16{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000 + lhs - rhs
    return bitwise_and(res, 0xffff)
end
func warp_sub_unsafe24{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000 + lhs - rhs
    return bitwise_and(res, 0xffffff)
end
func warp_sub_unsafe32{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000 + lhs - rhs
    return bitwise_and(res, 0xffffffff)
end
func warp_sub_unsafe40{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffff)
end
func warp_sub_unsafe48{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffff)
end
func warp_sub_unsafe56{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffff)
end
func warp_sub_unsafe64{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffff)
end
func warp_sub_unsafe72{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffff)
end
func warp_sub_unsafe80{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffff)
end
func warp_sub_unsafe88{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffff)
end
func warp_sub_unsafe96{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffff)
end
func warp_sub_unsafe104{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffff)
end
func warp_sub_unsafe112{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffff)
end
func warp_sub_unsafe120{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe128{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe136{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe144{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe152{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe160{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe168{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe176{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe184{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe192{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe200{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe208{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe216{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe224{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe232{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x10000000000000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe240{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x1000000000000000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe248{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let res : felt = 0x100000000000000000000000000000000000000000000000000000000000000 + lhs - rhs
    return bitwise_and(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_unsafe256{bitwise_ptr : BitwiseBuiltin*}(lhs : Uint256, rhs : Uint256) -> (
        result : Uint256):
    # preemptively borrow from bit128
    let (low_safe) = bitwise_and(
        0x100000000000000000000000000000000 + lhs.low - rhs.low,
        0xffffffffffffffffffffffffffffffff)
    let low_unsafe = lhs.low - rhs.low
    if low_safe == low_unsafe:
        # the borrow was not used
        let (high) = bitwise_and(
            0x100000000000000000000000000000000 + lhs.high - rhs.high,
            0xffffffffffffffffffffffffffffffff)
        return (Uint256(low_safe, high))
    else:
        # the borrow was used
        let (high) = bitwise_and(
            0x100000000000000000000000000000000 + lhs.high - rhs.high - 1,
            0xffffffffffffffffffffffffffffffff)
        return (Uint256(low_safe, high))
    end
end

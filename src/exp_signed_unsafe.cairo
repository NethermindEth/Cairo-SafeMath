# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_sub
from warplib.maths.mul_signed_unsafe import (
    warp_mul_signed_unsafe8,
    warp_mul_signed_unsafe16,
    warp_mul_signed_unsafe24,
    warp_mul_signed_unsafe32,
    warp_mul_signed_unsafe40,
    warp_mul_signed_unsafe48,
    warp_mul_signed_unsafe56,
    warp_mul_signed_unsafe64,
    warp_mul_signed_unsafe72,
    warp_mul_signed_unsafe80,
    warp_mul_signed_unsafe88,
    warp_mul_signed_unsafe96,
    warp_mul_signed_unsafe104,
    warp_mul_signed_unsafe112,
    warp_mul_signed_unsafe120,
    warp_mul_signed_unsafe128,
    warp_mul_signed_unsafe136,
    warp_mul_signed_unsafe144,
    warp_mul_signed_unsafe152,
    warp_mul_signed_unsafe160,
    warp_mul_signed_unsafe168,
    warp_mul_signed_unsafe176,
    warp_mul_signed_unsafe184,
    warp_mul_signed_unsafe192,
    warp_mul_signed_unsafe200,
    warp_mul_signed_unsafe208,
    warp_mul_signed_unsafe216,
    warp_mul_signed_unsafe224,
    warp_mul_signed_unsafe232,
    warp_mul_signed_unsafe240,
    warp_mul_signed_unsafe248,
    warp_mul_signed_unsafe256,
)

func _repeated_multiplication8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication8(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe8(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xe)
    end
    let (res) = _repeated_multiplication8(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_8(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe8(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xe)
    end
    let (res) = _repeated_multiplication_256_8(lhs, rhs)
    return (res)
end
func _repeated_multiplication16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication16(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe16(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfe)
    end
    let (res) = _repeated_multiplication16(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_16(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe16(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfe)
    end
    let (res) = _repeated_multiplication_256_16(lhs, rhs)
    return (res)
end
func _repeated_multiplication24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication24(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe24(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffe)
    end
    let (res) = _repeated_multiplication24(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_24(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe24(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffe)
    end
    let (res) = _repeated_multiplication_256_24(lhs, rhs)
    return (res)
end
func _repeated_multiplication32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication32(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe32(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffe)
    end
    let (res) = _repeated_multiplication32(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_32(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe32(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffe)
    end
    let (res) = _repeated_multiplication_256_32(lhs, rhs)
    return (res)
end
func _repeated_multiplication40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication40(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe40(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffe)
    end
    let (res) = _repeated_multiplication40(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_40(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe40(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffe)
    end
    let (res) = _repeated_multiplication_256_40(lhs, rhs)
    return (res)
end
func _repeated_multiplication48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication48(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe48(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffe)
    end
    let (res) = _repeated_multiplication48(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_48(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe48(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffe)
    end
    let (res) = _repeated_multiplication_256_48(lhs, rhs)
    return (res)
end
func _repeated_multiplication56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication56(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe56(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffe)
    end
    let (res) = _repeated_multiplication56(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_56(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe56(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffe)
    end
    let (res) = _repeated_multiplication_256_56(lhs, rhs)
    return (res)
end
func _repeated_multiplication64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication64(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe64(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffe)
    end
    let (res) = _repeated_multiplication64(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_64(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe64(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffe)
    end
    let (res) = _repeated_multiplication_256_64(lhs, rhs)
    return (res)
end
func _repeated_multiplication72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication72(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe72(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffe)
    end
    let (res) = _repeated_multiplication72(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_72(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe72(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffe)
    end
    let (res) = _repeated_multiplication_256_72(lhs, rhs)
    return (res)
end
func _repeated_multiplication80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication80(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe80(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffe)
    end
    let (res) = _repeated_multiplication80(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_80(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe80(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffe)
    end
    let (res) = _repeated_multiplication_256_80(lhs, rhs)
    return (res)
end
func _repeated_multiplication88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication88(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe88(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffe)
    end
    let (res) = _repeated_multiplication88(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_88(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe88(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffe)
    end
    let (res) = _repeated_multiplication_256_88(lhs, rhs)
    return (res)
end
func _repeated_multiplication96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication96(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe96(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffe)
    end
    let (res) = _repeated_multiplication96(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_96(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe96(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffe)
    end
    let (res) = _repeated_multiplication_256_96(lhs, rhs)
    return (res)
end
func _repeated_multiplication104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication104(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe104(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffe)
    end
    let (res) = _repeated_multiplication104(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_104(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe104(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_104(lhs, rhs)
    return (res)
end
func _repeated_multiplication112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication112(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe112(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffe)
    end
    let (res) = _repeated_multiplication112(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_112(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe112(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_112(lhs, rhs)
    return (res)
end
func _repeated_multiplication120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication120(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe120(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffe)
    end
    let (res) = _repeated_multiplication120(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_120(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe120(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_120(lhs, rhs)
    return (res)
end
func _repeated_multiplication128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication128(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe128(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffe)
    end
    let (res) = _repeated_multiplication128(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_128(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe128(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_128(lhs, rhs)
    return (res)
end
func _repeated_multiplication136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication136(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe136(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffe)
    end
    let (res) = _repeated_multiplication136(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_136(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe136(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_136(lhs, rhs)
    return (res)
end
func _repeated_multiplication144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication144(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe144(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffffe)
    end
    let (res) = _repeated_multiplication144(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_144(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe144(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_144(lhs, rhs)
    return (res)
end
func _repeated_multiplication152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication152(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe152(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication152(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_152(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe152(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_152(lhs, rhs)
    return (res)
end
func _repeated_multiplication160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication160(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe160(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication160(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_160(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe160(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_160(lhs, rhs)
    return (res)
end
func _repeated_multiplication168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication168(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe168(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication168(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_168(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe168(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_168(lhs, rhs)
    return (res)
end
func _repeated_multiplication176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication176(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe176(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication176(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_176(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe176(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_176(lhs, rhs)
    return (res)
end
func _repeated_multiplication184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication184(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe184(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication184(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_184(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe184(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_184(lhs, rhs)
    return (res)
end
func _repeated_multiplication192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication192(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe192(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication192(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_192(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe192(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_192(lhs, rhs)
    return (res)
end
func _repeated_multiplication200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication200(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe200(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication200(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_200(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe200(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_200(lhs, rhs)
    return (res)
end
func _repeated_multiplication208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication208(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe208(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication208(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_208(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe208(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_208(lhs, rhs)
    return (res)
end
func _repeated_multiplication216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication216(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe216(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication216(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_216(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe216(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_216(lhs, rhs)
    return (res)
end
func _repeated_multiplication224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication224(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe224(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication224(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_224(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe224(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_224(lhs, rhs)
    return (res)
end
func _repeated_multiplication232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication232(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe232(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication232(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_232(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe232(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_232(lhs, rhs)
    return (res)
end
func _repeated_multiplication240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication240(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe240(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication240(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_240(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe240(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xfffffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_240(lhs, rhs)
    return (res)
end
func _repeated_multiplication248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : felt
) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication248(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = warp_mul_signed_unsafe248(op, x)
        return (res)
    end
end
func warp_exp_signed_unsafe248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : felt
) -> (res : felt):
    if rhs == 0:
        return (1)
    end
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication248(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : felt, count : Uint256
) -> (res : felt):
    alloc_locals
    if count.low == 0:
        if count.high == 0:
            return (1)
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_248(op, decr)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    let (res) = warp_mul_signed_unsafe248(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : felt, rhs : Uint256
) -> (res : felt):
    if rhs.low == 0:
        if rhs.high == 0:
            return (1)
        end
    end
    if lhs * (lhs - 1) == 0:
        return (lhs)
    end
    if rhs.low == 1:
        if rhs.high == 0:
            return (lhs)
        end
    end
    if (lhs - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) == 0:
        let (is_odd) = bitwise_and(rhs.low, 1)
        return (1 + is_odd * 0xffffffffffffffffffffffffffffffe)
    end
    let (res) = _repeated_multiplication_256_248(lhs, rhs)
    return (res)
end
func _repeated_multiplication256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : Uint256, count : felt
) -> (res : Uint256):
    if count == 0:
        return (Uint256(1, 0))
    end
    let (x) = _repeated_multiplication256(op, count - 1)
    let (res) = warp_mul_signed_unsafe256(op, x)
    return (res)
end
func warp_exp_signed_unsafe256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : Uint256, rhs : felt
) -> (res : Uint256):
    if rhs == 0:
        return (Uint256(1, 0))
    end
    if lhs.high == 0:
        if lhs.low * (lhs.low - 1) == 0:
            return (lhs)
        end
    end
    if (lhs.low - 0xffffffffffffffffffffffffffffffff) == 0:
        if (lhs.high - 0xffffffffffffffffffffffffffffffff) == 0:
            let (is_odd) = bitwise_and(rhs, 1)
            return (
                Uint256(1 + is_odd * 0xfffffffffffffffffffffffffffffffe, is_odd * 0xffffffffffffffffffffffffffffffff),
            )
        end
    end
    let (res) = _repeated_multiplication256(lhs, rhs)
    return (res)
end
func _repeated_multiplication_256_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    op : Uint256, count : Uint256
) -> (res : Uint256):
    if count.low == 0:
        if count.high == 0:
            return (Uint256(1, 0))
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication_256_256(op, decr)
    let (res) = warp_mul_signed_unsafe256(op, x)
    return (res)
end
func warp_exp_wide_signed_unsafe256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
    lhs : Uint256, rhs : Uint256
) -> (res : Uint256):
    if rhs.high == 0:
        if rhs.low == 0:
            return (Uint256(1, 0))
        end
    end
    if lhs.high == 0:
        if lhs.low * (lhs.low - 1) == 0:
            return (lhs)
        end
    end
    if (lhs.low - 0xffffffffffffffffffffffffffffffff) == 0:
        if (lhs.high - 0xffffffffffffffffffffffffffffffff) == 0:
            let (is_odd) = bitwise_and(rhs.low, 1)
            return (
                Uint256(1 + is_odd * 0xfffffffffffffffffffffffffffffffe, is_odd * 0xffffffffffffffffffffffffffffffff),
            )
        end
    end
    let (res) = _repeated_multiplication_256_256(lhs, rhs)
    return (res)
end

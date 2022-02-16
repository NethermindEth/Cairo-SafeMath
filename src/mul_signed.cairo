# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.math_cmp import is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_mul, uint256_cond_neg, uint256_signed_nn
from warplib.maths.utils import felt_to_uint256
from warplib.maths.le import le
from warplib.maths.mul import (
    mul8, mul16, mul24, mul32, mul40, mul48, mul56, mul64,
    mul72, mul80, mul88, mul96, mul104, mul112, mul120,
    mul128, mul136, mul144, mul152, mul160, mul168, mul176,
    mul184, mul192, mul200, mul208, mul216, mul224, mul232,
    mul240, mul248)
from warplib.maths.negate import (
    negate8, negate16, negate24, negate32, negate40, negate48,
    negate56, negate64, negate72, negate80, negate88, negate96,
    negate104, negate112, negate120, negate128, negate136, negate144,
    negate152, negate160, negate168, negate176, negate184, negate192,
    negate200, negate208, negate216, negate224, negate232, negate240,
    negate248)

func mul_signed8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80)
        if right_msb == 0:
            let (res) = mul8(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate8(rhs)
            let (res_abs) = mul8(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80)
            assert in_range = 1
            let (res) = negate8(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80)
        if right_msb == 0:
            let (lhs_abs) = negate8(lhs)
            let (res_abs) = mul8(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80)
            assert in_range = 1
            let (res) = negate8(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate8(lhs)
            let (rhs_abs) = negate8(rhs)
            let (res) = mul8(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000)
        if right_msb == 0:
            let (res) = mul16(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate16(rhs)
            let (res_abs) = mul16(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000)
            assert in_range = 1
            let (res) = negate16(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000)
        if right_msb == 0:
            let (lhs_abs) = negate16(lhs)
            let (res_abs) = mul16(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000)
            assert in_range = 1
            let (res) = negate16(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate16(lhs)
            let (rhs_abs) = negate16(rhs)
            let (res) = mul16(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000)
        if right_msb == 0:
            let (res) = mul24(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate24(rhs)
            let (res_abs) = mul24(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000)
            assert in_range = 1
            let (res) = negate24(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000)
        if right_msb == 0:
            let (lhs_abs) = negate24(lhs)
            let (res_abs) = mul24(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000)
            assert in_range = 1
            let (res) = negate24(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate24(lhs)
            let (rhs_abs) = negate24(rhs)
            let (res) = mul24(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000)
        if right_msb == 0:
            let (res) = mul32(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate32(rhs)
            let (res_abs) = mul32(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000)
            assert in_range = 1
            let (res) = negate32(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000)
        if right_msb == 0:
            let (lhs_abs) = negate32(lhs)
            let (res_abs) = mul32(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000)
            assert in_range = 1
            let (res) = negate32(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate32(lhs)
            let (rhs_abs) = negate32(rhs)
            let (res) = mul32(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000)
        if right_msb == 0:
            let (res) = mul40(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate40(rhs)
            let (res_abs) = mul40(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000000000)
            assert in_range = 1
            let (res) = negate40(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000)
        if right_msb == 0:
            let (lhs_abs) = negate40(lhs)
            let (res_abs) = mul40(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000000000)
            assert in_range = 1
            let (res) = negate40(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate40(lhs)
            let (rhs_abs) = negate40(rhs)
            let (res) = mul40(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000)
        if right_msb == 0:
            let (res) = mul48(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate48(rhs)
            let (res_abs) = mul48(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000000000)
            assert in_range = 1
            let (res) = negate48(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000)
        if right_msb == 0:
            let (lhs_abs) = negate48(lhs)
            let (res_abs) = mul48(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000000000)
            assert in_range = 1
            let (res) = negate48(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate48(lhs)
            let (rhs_abs) = negate48(rhs)
            let (res) = mul48(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000)
        if right_msb == 0:
            let (res) = mul56(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate56(rhs)
            let (res_abs) = mul56(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000000000)
            assert in_range = 1
            let (res) = negate56(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate56(lhs)
            let (res_abs) = mul56(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000000000)
            assert in_range = 1
            let (res) = negate56(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate56(lhs)
            let (rhs_abs) = negate56(rhs)
            let (res) = mul56(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000)
        if right_msb == 0:
            let (res) = mul64(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate64(rhs)
            let (res_abs) = mul64(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000000000000000)
            assert in_range = 1
            let (res) = negate64(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate64(lhs)
            let (res_abs) = mul64(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000000000000000)
            assert in_range = 1
            let (res) = negate64(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate64(lhs)
            let (rhs_abs) = negate64(rhs)
            let (res) = mul64(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000)
        if right_msb == 0:
            let (res) = mul72(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate72(rhs)
            let (res_abs) = mul72(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000000000000000)
            assert in_range = 1
            let (res) = negate72(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate72(lhs)
            let (res_abs) = mul72(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000000000000000)
            assert in_range = 1
            let (res) = negate72(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate72(lhs)
            let (rhs_abs) = negate72(rhs)
            let (res) = mul72(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000)
        if right_msb == 0:
            let (res) = mul80(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate80(rhs)
            let (res_abs) = mul80(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000000000000000)
            assert in_range = 1
            let (res) = negate80(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate80(lhs)
            let (res_abs) = mul80(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000000000000000)
            assert in_range = 1
            let (res) = negate80(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate80(lhs)
            let (rhs_abs) = negate80(rhs)
            let (res) = mul80(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000)
        if right_msb == 0:
            let (res) = mul88(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate88(rhs)
            let (res_abs) = mul88(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000000000000000000000)
            assert in_range = 1
            let (res) = negate88(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate88(lhs)
            let (res_abs) = mul88(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000000000000000000000)
            assert in_range = 1
            let (res) = negate88(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate88(lhs)
            let (rhs_abs) = negate88(rhs)
            let (res) = mul88(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000)
        if right_msb == 0:
            let (res) = mul96(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate96(rhs)
            let (res_abs) = mul96(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000000000000000000000)
            assert in_range = 1
            let (res) = negate96(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate96(lhs)
            let (res_abs) = mul96(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000000000000000000000)
            assert in_range = 1
            let (res) = negate96(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate96(lhs)
            let (rhs_abs) = negate96(rhs)
            let (res) = mul96(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000)
        if right_msb == 0:
            let (res) = mul104(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate104(rhs)
            let (res_abs) = mul104(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000)
            assert in_range = 1
            let (res) = negate104(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate104(lhs)
            let (res_abs) = mul104(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000)
            assert in_range = 1
            let (res) = negate104(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate104(lhs)
            let (rhs_abs) = negate104(rhs)
            let (res) = mul104(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul112(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate112(rhs)
            let (res_abs) = mul112(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000)
            assert in_range = 1
            let (res) = negate112(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate112(lhs)
            let (res_abs) = mul112(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000)
            assert in_range = 1
            let (res) = negate112(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate112(lhs)
            let (rhs_abs) = negate112(rhs)
            let (res) = mul112(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul120(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate120(rhs)
            let (res_abs) = mul120(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000)
            assert in_range = 1
            let (res) = negate120(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate120(lhs)
            let (res_abs) = mul120(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000)
            assert in_range = 1
            let (res) = negate120(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate120(lhs)
            let (rhs_abs) = negate120(rhs)
            let (res) = mul120(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul128(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate128(rhs)
            let (res_abs) = mul128(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate128(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate128(lhs)
            let (res_abs) = mul128(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate128(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate128(lhs)
            let (rhs_abs) = negate128(rhs)
            let (res) = mul128(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul136(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate136(rhs)
            let (res_abs) = mul136(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate136(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate136(lhs)
            let (res_abs) = mul136(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate136(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate136(lhs)
            let (rhs_abs) = negate136(rhs)
            let (res) = mul136(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul144(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate144(rhs)
            let (res_abs) = mul144(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate144(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate144(lhs)
            let (res_abs) = mul144(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate144(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate144(lhs)
            let (rhs_abs) = negate144(rhs)
            let (res) = mul144(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul152(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate152(rhs)
            let (res_abs) = mul152(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate152(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate152(lhs)
            let (res_abs) = mul152(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate152(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate152(lhs)
            let (rhs_abs) = negate152(rhs)
            let (res) = mul152(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul160(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate160(rhs)
            let (res_abs) = mul160(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate160(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate160(lhs)
            let (res_abs) = mul160(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate160(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate160(lhs)
            let (rhs_abs) = negate160(rhs)
            let (res) = mul160(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul168(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate168(rhs)
            let (res_abs) = mul168(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate168(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate168(lhs)
            let (res_abs) = mul168(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate168(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate168(lhs)
            let (rhs_abs) = negate168(rhs)
            let (res) = mul168(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul176(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate176(rhs)
            let (res_abs) = mul176(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate176(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate176(lhs)
            let (res_abs) = mul176(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate176(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate176(lhs)
            let (rhs_abs) = negate176(rhs)
            let (res) = mul176(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul184(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate184(rhs)
            let (res_abs) = mul184(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate184(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate184(lhs)
            let (res_abs) = mul184(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x8000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate184(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate184(lhs)
            let (rhs_abs) = negate184(rhs)
            let (res) = mul184(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul192(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate192(rhs)
            let (res_abs) = mul192(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate192(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate192(lhs)
            let (res_abs) = mul192(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x800000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate192(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate192(lhs)
            let (rhs_abs) = negate192(rhs)
            let (res) = mul192(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x800000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul200(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate200(rhs)
            let (res_abs) = mul200(lhs, rhs_abs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate200(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x80000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate200(lhs)
            let (res_abs) = mul200(lhs_abs, rhs)
            let (in_range) = le(res_abs, 0x80000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate200(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate200(lhs)
            let (rhs_abs) = negate200(rhs)
            let (res) = mul200(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x80000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul208(lhs, rhs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate208(rhs)
            let (res_abs) = mul208(lhs, rhs_abs)
            let (in_range) = le(
                res_abs, 0x8000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate208(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate208(lhs)
            let (res_abs) = mul208(lhs_abs, rhs)
            let (in_range) = le(
                res_abs, 0x8000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate208(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate208(lhs)
            let (rhs_abs) = negate208(rhs)
            let (res) = mul208(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(res, 0x8000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul216(lhs, rhs)
            let (res_msb) = bitwise_and(
                res, 0x800000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate216(rhs)
            let (res_abs) = mul216(lhs, rhs_abs)
            let (in_range) = le(
                res_abs, 0x800000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate216(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate216(lhs)
            let (res_abs) = mul216(lhs_abs, rhs)
            let (in_range) = le(
                res_abs, 0x800000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate216(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate216(lhs)
            let (rhs_abs) = negate216(rhs)
            let (res) = mul216(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(
                res, 0x800000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(
            rhs, 0x80000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul224(lhs, rhs)
            let (res_msb) = bitwise_and(
                res, 0x80000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate224(rhs)
            let (res_abs) = mul224(lhs, rhs_abs)
            let (in_range) = le(
                res_abs, 0x80000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate224(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(
            rhs, 0x80000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate224(lhs)
            let (res_abs) = mul224(lhs_abs, rhs)
            let (in_range) = le(
                res_abs, 0x80000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate224(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate224(lhs)
            let (rhs_abs) = negate224(rhs)
            let (res) = mul224(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(
                res, 0x80000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(
            rhs, 0x8000000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul232(lhs, rhs)
            let (res_msb) = bitwise_and(
                res, 0x8000000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate232(rhs)
            let (res_abs) = mul232(lhs, rhs_abs)
            let (in_range) = le(
                res_abs, 0x8000000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate232(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(
            rhs, 0x8000000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate232(lhs)
            let (res_abs) = mul232(lhs_abs, rhs)
            let (in_range) = le(
                res_abs, 0x8000000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate232(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate232(lhs)
            let (rhs_abs) = negate232(rhs)
            let (res) = mul232(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(
                res, 0x8000000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(
        lhs, 0x800000000000000000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(
            rhs, 0x800000000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul240(lhs, rhs)
            let (res_msb) = bitwise_and(
                res, 0x800000000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate240(rhs)
            let (res_abs) = mul240(lhs, rhs_abs)
            let (in_range) = le(
                res_abs, 0x800000000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate240(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(
            rhs, 0x800000000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate240(lhs)
            let (res_abs) = mul240(lhs_abs, rhs)
            let (in_range) = le(
                res_abs, 0x800000000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate240(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate240(lhs)
            let (rhs_abs) = negate240(rhs)
            let (res) = mul240(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(
                res, 0x800000000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (left_msb) = bitwise_and(
        lhs, 0x80000000000000000000000000000000000000000000000000000000000000)
    if left_msb == 0:
        let (right_msb) = bitwise_and(
            rhs, 0x80000000000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (res) = mul248(lhs, rhs)
            let (res_msb) = bitwise_and(
                res, 0x80000000000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        else:
            let (rhs_abs) = negate248(rhs)
            let (res_abs) = mul248(lhs, rhs_abs)
            let (in_range) = le(
                res_abs, 0x80000000000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate248(res_abs)
            return (res)
        end
    else:
        let (right_msb) = bitwise_and(
            rhs, 0x80000000000000000000000000000000000000000000000000000000000000)
        if right_msb == 0:
            let (lhs_abs) = negate248(lhs)
            let (res_abs) = mul248(lhs_abs, rhs)
            let (in_range) = le(
                res_abs, 0x80000000000000000000000000000000000000000000000000000000000000)
            assert in_range = 1
            let (res) = negate248(res_abs)
            return (res)
        else:
            let (lhs_abs) = negate248(lhs)
            let (rhs_abs) = negate248(rhs)
            let (res) = mul248(lhs_abs, rhs_abs)
            let (res_msb) = bitwise_and(
                res, 0x80000000000000000000000000000000000000000000000000000000000000)
            assert res_msb = 0
            return (res)
        end
    end
end
func mul_signed256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : Uint256, rhs : Uint256) -> (result : Uint256):
    alloc_locals
    let (lhs_nn) = uint256_signed_nn(lhs)
    let (local rhs_nn) = uint256_signed_nn(rhs)
    let (lhs_abs) = uint256_cond_neg(lhs, 1 - lhs_nn)
    let (rhs_abs) = uint256_cond_neg(rhs, 1 - rhs_nn)
    let (res_abs, overflow) = uint256_mul(lhs_abs, rhs_abs)
    assert overflow.low = 0
    assert overflow.high = 0
    let (msb) = bitwise_and(res_abs.high, 0x80000000000000000000000000000000)
    assert msb = 0
    let (res) = uint256_cond_neg(res_abs, (lhs_nn + rhs_nn) * (2 - lhs_nn - rhs_nn))
    return (res)
end

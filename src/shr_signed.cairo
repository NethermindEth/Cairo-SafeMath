# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.math_cmp import is_le, is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_and
from warplib.maths.pow2 import pow2
from warplib.maths.shr import (
    shr8, shr16, shr24, shr32, shr40, shr48, shr56, shr64,
    shr72, shr80, shr88, shr96, shr104, shr112, shr120,
    shr128, shr136, shr144, shr152, shr160, shr168, shr176,
    shr184, shr192, shr200, shr208, shr216, shr224, shr232,
    shr240, shr248, shr256)

func shr_signed8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr8(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(8, rhs)
        if large_shift == 1:
            return (0xff)
        else:
            let (shifted) = shr8(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(8 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed8_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr8(lhs, rhs.low)
    else:
        return shr8(lhs, 8)
    end
end
func shr_signed16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr16(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(16, rhs)
        if large_shift == 1:
            return (0xffff)
        else:
            let (shifted) = shr16(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(16 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed16_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr16(lhs, rhs.low)
    else:
        return shr16(lhs, 16)
    end
end
func shr_signed24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr24(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(24, rhs)
        if large_shift == 1:
            return (0xffffff)
        else:
            let (shifted) = shr24(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(24 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed24_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr24(lhs, rhs.low)
    else:
        return shr24(lhs, 24)
    end
end
func shr_signed32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr32(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(32, rhs)
        if large_shift == 1:
            return (0xffffffff)
        else:
            let (shifted) = shr32(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(32 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed32_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr32(lhs, rhs.low)
    else:
        return shr32(lhs, 32)
    end
end
func shr_signed40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr40(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(40, rhs)
        if large_shift == 1:
            return (0xffffffffff)
        else:
            let (shifted) = shr40(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(40 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed40_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr40(lhs, rhs.low)
    else:
        return shr40(lhs, 40)
    end
end
func shr_signed48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr48(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(48, rhs)
        if large_shift == 1:
            return (0xffffffffffff)
        else:
            let (shifted) = shr48(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(48 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed48_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr48(lhs, rhs.low)
    else:
        return shr48(lhs, 48)
    end
end
func shr_signed56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr56(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(56, rhs)
        if large_shift == 1:
            return (0xffffffffffffff)
        else:
            let (shifted) = shr56(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(56 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed56_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr56(lhs, rhs.low)
    else:
        return shr56(lhs, 56)
    end
end
func shr_signed64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr64(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(64, rhs)
        if large_shift == 1:
            return (0xffffffffffffffff)
        else:
            let (shifted) = shr64(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(64 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed64_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr64(lhs, rhs.low)
    else:
        return shr64(lhs, 64)
    end
end
func shr_signed72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr72(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(72, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffff)
        else:
            let (shifted) = shr72(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(72 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed72_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr72(lhs, rhs.low)
    else:
        return shr72(lhs, 72)
    end
end
func shr_signed80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr80(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(80, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffff)
        else:
            let (shifted) = shr80(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(80 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed80_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr80(lhs, rhs.low)
    else:
        return shr80(lhs, 80)
    end
end
func shr_signed88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr88(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(88, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffff)
        else:
            let (shifted) = shr88(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(88 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed88_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr88(lhs, rhs.low)
    else:
        return shr88(lhs, 88)
    end
end
func shr_signed96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr96(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(96, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffff)
        else:
            let (shifted) = shr96(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(96 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed96_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr96(lhs, rhs.low)
    else:
        return shr96(lhs, 96)
    end
end
func shr_signed104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr104(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(104, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffff)
        else:
            let (shifted) = shr104(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(104 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed104_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr104(lhs, rhs.low)
    else:
        return shr104(lhs, 104)
    end
end
func shr_signed112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr112(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(112, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr112(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(112 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed112_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr112(lhs, rhs.low)
    else:
        return shr112(lhs, 112)
    end
end
func shr_signed120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr120(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(120, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr120(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(120 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed120_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr120(lhs, rhs.low)
    else:
        return shr120(lhs, 120)
    end
end
func shr_signed128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr128(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(128, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr128(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(128 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed128_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr128(lhs, rhs.low)
    else:
        return shr128(lhs, 128)
    end
end
func shr_signed136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr136(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(136, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr136(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(136 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed136_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr136(lhs, rhs.low)
    else:
        return shr136(lhs, 136)
    end
end
func shr_signed144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr144(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(144, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr144(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(144 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed144_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr144(lhs, rhs.low)
    else:
        return shr144(lhs, 144)
    end
end
func shr_signed152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr152(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(152, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr152(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(152 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed152_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr152(lhs, rhs.low)
    else:
        return shr152(lhs, 152)
    end
end
func shr_signed160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr160(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(160, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr160(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(160 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed160_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr160(lhs, rhs.low)
    else:
        return shr160(lhs, 160)
    end
end
func shr_signed168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr168(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(168, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr168(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(168 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed168_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr168(lhs, rhs.low)
    else:
        return shr168(lhs, 168)
    end
end
func shr_signed176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr176(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(176, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr176(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(176 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed176_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr176(lhs, rhs.low)
    else:
        return shr176(lhs, 176)
    end
end
func shr_signed184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr184(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(184, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr184(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(184 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed184_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr184(lhs, rhs.low)
    else:
        return shr184(lhs, 184)
    end
end
func shr_signed192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr192(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(192, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr192(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(192 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed192_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr192(lhs, rhs.low)
    else:
        return shr192(lhs, 192)
    end
end
func shr_signed200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x80000000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr200(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(200, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr200(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(200 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed200_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr200(lhs, rhs.low)
    else:
        return shr200(lhs, 200)
    end
end
func shr_signed208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr208(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(208, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr208(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(208 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed208_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr208(lhs, rhs.low)
    else:
        return shr208(lhs, 208)
    end
end
func shr_signed216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr216(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(216, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr216(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(216 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed216_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr216(lhs, rhs.low)
    else:
        return shr216(lhs, 216)
    end
end
func shr_signed224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(
        lhs, 0x80000000000000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr224(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(224, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr224(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(224 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed224_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr224(lhs, rhs.low)
    else:
        return shr224(lhs, 224)
    end
end
func shr_signed232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(
        lhs, 0x8000000000000000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr232(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(232, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr232(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(232 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed232_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr232(lhs, rhs.low)
    else:
        return shr232(lhs, 232)
    end
end
func shr_signed240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(
        lhs, 0x800000000000000000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr240(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(240, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr240(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(240 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed240_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr240(lhs, rhs.low)
    else:
        return shr240(lhs, 240)
    end
end
func shr_signed248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_msb) = bitwise_and(
        lhs, 0x80000000000000000000000000000000000000000000000000000000000000)
    local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
    if lhs_msb == 0:
        return shr248(lhs, rhs)
    else:
        let (large_shift) = is_le_felt(248, rhs)
        if large_shift == 1:
            return (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
        else:
            let (shifted) = shr248(lhs, rhs)
            let (sign_extend_bound) = pow2(rhs)
            let sign_extend_value = sign_extend_bound - 1
            let (sign_extend_multiplier) = pow2(248 - rhs)
            return (shifted + sign_extend_value * sign_extend_multiplier)
        end
    end
end
func shr_signed248_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : felt, rhs : Uint256) -> (res : felt):
    if rhs.high == 0:
        return shr248(lhs, rhs.low)
    else:
        return shr248(lhs, 248)
    end
end
func shr_signed256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : Uint256, rhs : felt) -> (res : Uint256):
    alloc_locals
    let (local lhs_msb) = bitwise_and(lhs.high, 0x80000000000000000000000000000000)
    let (logical_shift) = shr256(lhs, rhs)
    if lhs_msb == 0:
        return (logical_shift)
    else:
        let (large_shift) = is_le(256, rhs)
        if large_shift == 1:
            return (Uint256(0xffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffff))
        else:
            let (crosses_boundary) = is_le(128, rhs)
            if crosses_boundary == 1:
                let (bound) = pow2(rhs - 128)
                let ones = bound - 1
                let (shift) = pow2(256 - rhs)
                return (
                    Uint256(logical_shift.low + ones * shift, 0xffffffffffffffffffffffffffffffff))
            else:
                let (bound) = pow2(rhs - 128)
                let ones = bound - 1
                let (shift) = pow2(128 - rhs)
                return (Uint256(logical_shift.low, logical_shift.high + ones * shift))
            end
        end
    end
end
func shr_signed256_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    if rhs.high == 0:
        return shr_signed256(lhs, rhs.low)
    else:
        return shr_signed256(lhs, 256)
    end
end

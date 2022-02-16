# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and, bitwise_not
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.math_cmp import is_le, is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_and
from warplib.maths.pow2 import pow2

func shr8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(8, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 8 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr8_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr8(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(16, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 16 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr16_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr16(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(24, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 24 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr24_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr24(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(32, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 32 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr32_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr32(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(40, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 40 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr40_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr40(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(48, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 48 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr48_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr48(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(56, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 56 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr56_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr56(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(64, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 64 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr64_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr64(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(72, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 72 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr72_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr72(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(80, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 80 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr80_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr80(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(88, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 88 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr88_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr88(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(96, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 96 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr96_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr96(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(104, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 104 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr104_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr104(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(112, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 112 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr112_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr112(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(120, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 120 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr120_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr120(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(128, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 128 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr128_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr128(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(136, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 136 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr136_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr136(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(144, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 144 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr144_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr144(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(152, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 152 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr152_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr152(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(160, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 160 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr160_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr160(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(168, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 168 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr168_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr168(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(176, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 176 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr176_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr176(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(184, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 184 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr184_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr184(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(192, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 192 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr192_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr192(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(200, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 200 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr200_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr200(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(208, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 208 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr208_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr208(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(216, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 216 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr216_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr216(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(224, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 224 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr224_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr224(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(232, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 232 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr232_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr232(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(240, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 240 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr240_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr240(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    let (large_shift) = is_le_felt(248, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 248 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let mask = preserved_bound - 1
        let (divisor) = pow2(rhs)
        let shifted_mask = mask * divisor
        let (lhs_truncated) = bitwise_and(lhs, shifted_mask)
        return (lhs_truncated / divisor)
    end
end
func shr248_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shr248(lhs, rhs.low)
    else:
        return (0)
    end
end
func shr256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : Uint256, rhs : felt) -> (
        result : Uint256):
    let (le_127) = is_le(rhs, 127)
    if le_127 == 1:
        # (h', l') := (h, l) >> rhs
        # p := 2^rhs
        # l' = ((h & (p-1)) << (128 - rhs)) + ((l&~(p-1)) >> rhs)
        #    = ((h & (p-1)) << 128 >> rhs) + ((l&~(p-1)) >> rhs)
        #    = (h & (p-1)) * 2^128 / p + (l&~(p-1)) / p
        #    = (h & (p-1) * 2^128 + l&~(p-1)) / p
        # h' = h >> rhs = (h - h&(p-1)) / p
        let (p) = pow2(rhs)
        let (low_mask) = bitwise_not(p - 1)
        let (low_part) = bitwise_and(lhs.low, low_mask)
        let (high_part) = bitwise_and(lhs.high, p - 1)
        return (
            Uint256(low=(low_part + 0x100000000000000000000000000000000 * high_part) / p, high=(lhs.high - high_part) / p))
    end
    let (le_255) = is_le(rhs, 255)
    if le_255 == 1:
        let (p) = pow2(rhs - 128)
        let (mask) = bitwise_not(p - 1)
        let (res) = bitwise_and(lhs.high, mask)
        return (Uint256(res / p, 0))
    end
    return (Uint256(0, 0))
end
func shr256_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : Uint256, rhs : Uint256) -> (
        result : Uint256):
    if rhs.high != 0:
        return (Uint256(0, 0))
    end
    let (le_127) = is_le(rhs.low, 127)
    if le_127 == 1:
        # (h', l') := (h, l) >> rhs
        # p := 2^rhs
        # l' = ((h & (p-1)) << (128 - rhs)) + ((l&~(p-1)) >> rhs)
        #    = ((h & (p-1)) << 128 >> rhs) + ((l&~(p-1)) >> rhs)
        #    = (h & (p-1)) * 2^128 / p + (l&~(p-1)) / p
        #    = (h & (p-1) * 2^128 + l&~(p-1)) / p
        # h' = h >> rhs = (h - h&(p-1)) / p
        let (p) = pow2(rhs.low)
        let (low_mask) = bitwise_not(p - 1)
        let (low_part) = bitwise_and(lhs.low, low_mask)
        let (high_part) = bitwise_and(lhs.high, p - 1)
        return (
            Uint256(low=(low_part + 0x100000000000000000000000000000000 * high_part) / p, high=(lhs.high - high_part) / p))
    end
    let (le_255) = is_le(rhs.low, 255)
    if le_255 == 1:
        let (p) = pow2(rhs.low - 128)
        let (mask) = bitwise_not(p - 1)
        let (res) = bitwise_and(lhs.high, mask)
        return (Uint256(res / p, 0))
    end
    return (Uint256(0, 0))
end

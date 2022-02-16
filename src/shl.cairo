# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.math import split_felt
from starkware.cairo.common.math_cmp import is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_shl
from warplib.maths.pow2 import pow2

func shl8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(8, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 8 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl8_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl8(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(16, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 16 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl16_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl16(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(24, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 24 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl24_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl24(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(32, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 32 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl32_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl32(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(40, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 40 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl40_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl40(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(48, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 48 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl48_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl48(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(56, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 56 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl56_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl56(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(64, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 64 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl64_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl64(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(72, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 72 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl72_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl72(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(80, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 80 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl80_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl80(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(88, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 88 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl88_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl88(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(96, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 96 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl96_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl96(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(104, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 104 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl104_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl104(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(112, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 112 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl112_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl112(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(120, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 120 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl120_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl120(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(128, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 128 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl128_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl128(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(136, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 136 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl136_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl136(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(144, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 144 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl144_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl144(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(152, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 152 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl152_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl152(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(160, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 160 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl160_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl160(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(168, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 168 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl168_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl168(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(176, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 176 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl176_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl176(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(184, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 184 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl184_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl184(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(192, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 192 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl192_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl192(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(200, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 200 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl200_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl200(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(208, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 208 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl208_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl208(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(216, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 216 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl216_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl216(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(224, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 224 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl224_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl224(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(232, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 232 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl232_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl232(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(240, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 240 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl240_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl240(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # width <= rhs (shift amount) means result will be 0
    let (large_shift) = is_le_felt(248, rhs)
    if large_shift == 1:
        return (0)
    else:
        let preserved_width = 248 - rhs
        let (preserved_bound) = pow2(preserved_width)
        let (lhs_truncated) = bitwise_and(lhs, preserved_bound - 1)
        let (multiplier) = pow2(rhs)
        return (lhs * multiplier)
    end
end
func shl248_256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : Uint256) -> (
        res : felt):
    if rhs.high == 0:
        return shl248(lhs, rhs.low)
    else:
        return (0)
    end
end
func shl256{range_check_ptr}(lhs : Uint256, rhs : felt) -> (result : Uint256):
    let (high, low) = split_felt(rhs)
    return uint256_shl(lhs, Uint256(low, high))
end
func shl256_256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (result : Uint256):
    return uint256_shl(lhs, rhs)
end

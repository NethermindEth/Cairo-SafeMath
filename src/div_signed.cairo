# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_signed_div_rem
from warplib.maths.utils import felt_to_uint256
from warplib.maths.int_conversions import (
    int8_to_int256, int16_to_int256, int24_to_int256, int32_to_int256, int40_to_int256,
    int48_to_int256, int56_to_int256, int64_to_int256, int72_to_int256, int80_to_int256,
    int88_to_int256, int96_to_int256, int104_to_int256, int112_to_int256, int120_to_int256,
    int128_to_int256, int136_to_int256, int144_to_int256, int152_to_int256, int160_to_int256,
    int168_to_int256, int176_to_int256, int184_to_int256, int192_to_int256, int200_to_int256,
    int208_to_int256, int216_to_int256, int224_to_int256, int232_to_int256, int240_to_int256,
    int248_to_int256, int256_to_int8, int256_to_int16, int256_to_int24, int256_to_int32,
    int256_to_int40, int256_to_int48, int256_to_int56, int256_to_int64, int256_to_int72,
    int256_to_int80, int256_to_int88, int256_to_int96, int256_to_int104, int256_to_int112,
    int256_to_int120, int256_to_int128, int256_to_int136, int256_to_int144, int256_to_int152,
    int256_to_int160, int256_to_int168, int256_to_int176, int256_to_int184, int256_to_int192,
    int256_to_int200, int256_to_int208, int256_to_int216, int256_to_int224, int256_to_int232,
    int256_to_int240, int256_to_int248)

func div_signed8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int8_to_int256(lhs)
    let (rhs_256) = int8_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int8(res256)
    return (truncated)
end
func div_signed16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int16_to_int256(lhs)
    let (rhs_256) = int16_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int16(res256)
    return (truncated)
end
func div_signed24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int24_to_int256(lhs)
    let (rhs_256) = int24_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int24(res256)
    return (truncated)
end
func div_signed32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int32_to_int256(lhs)
    let (rhs_256) = int32_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int32(res256)
    return (truncated)
end
func div_signed40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int40_to_int256(lhs)
    let (rhs_256) = int40_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int40(res256)
    return (truncated)
end
func div_signed48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int48_to_int256(lhs)
    let (rhs_256) = int48_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int48(res256)
    return (truncated)
end
func div_signed56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int56_to_int256(lhs)
    let (rhs_256) = int56_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int56(res256)
    return (truncated)
end
func div_signed64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int64_to_int256(lhs)
    let (rhs_256) = int64_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int64(res256)
    return (truncated)
end
func div_signed72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int72_to_int256(lhs)
    let (rhs_256) = int72_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int72(res256)
    return (truncated)
end
func div_signed80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int80_to_int256(lhs)
    let (rhs_256) = int80_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int80(res256)
    return (truncated)
end
func div_signed88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int88_to_int256(lhs)
    let (rhs_256) = int88_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int88(res256)
    return (truncated)
end
func div_signed96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int96_to_int256(lhs)
    let (rhs_256) = int96_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int96(res256)
    return (truncated)
end
func div_signed104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int104_to_int256(lhs)
    let (rhs_256) = int104_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int104(res256)
    return (truncated)
end
func div_signed112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int112_to_int256(lhs)
    let (rhs_256) = int112_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int112(res256)
    return (truncated)
end
func div_signed120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int120_to_int256(lhs)
    let (rhs_256) = int120_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int120(res256)
    return (truncated)
end
func div_signed128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int128_to_int256(lhs)
    let (rhs_256) = int128_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int128(res256)
    return (truncated)
end
func div_signed136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int136_to_int256(lhs)
    let (rhs_256) = int136_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int136(res256)
    return (truncated)
end
func div_signed144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int144_to_int256(lhs)
    let (rhs_256) = int144_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int144(res256)
    return (truncated)
end
func div_signed152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int152_to_int256(lhs)
    let (rhs_256) = int152_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int152(res256)
    return (truncated)
end
func div_signed160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int160_to_int256(lhs)
    let (rhs_256) = int160_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int160(res256)
    return (truncated)
end
func div_signed168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int168_to_int256(lhs)
    let (rhs_256) = int168_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int168(res256)
    return (truncated)
end
func div_signed176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int176_to_int256(lhs)
    let (rhs_256) = int176_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int176(res256)
    return (truncated)
end
func div_signed184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int184_to_int256(lhs)
    let (rhs_256) = int184_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int184(res256)
    return (truncated)
end
func div_signed192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int192_to_int256(lhs)
    let (rhs_256) = int192_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int192(res256)
    return (truncated)
end
func div_signed200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int200_to_int256(lhs)
    let (rhs_256) = int200_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int200(res256)
    return (truncated)
end
func div_signed208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int208_to_int256(lhs)
    let (rhs_256) = int208_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int208(res256)
    return (truncated)
end
func div_signed216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int216_to_int256(lhs)
    let (rhs_256) = int216_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int216(res256)
    return (truncated)
end
func div_signed224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int224_to_int256(lhs)
    let (rhs_256) = int224_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int224(res256)
    return (truncated)
end
func div_signed232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int232_to_int256(lhs)
    let (rhs_256) = int232_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int232(res256)
    return (truncated)
end
func div_signed240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int240_to_int256(lhs)
    let (rhs_256) = int240_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int240(res256)
    return (truncated)
end
func div_signed248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = int248_to_int256(lhs)
    let (rhs_256) = int248_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = int256_to_int248(res256)
    return (truncated)
end
func div_signed256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    let (res : Uint256, _) = uint256_signed_div_rem(lhs, rhs)
    return (res)
end

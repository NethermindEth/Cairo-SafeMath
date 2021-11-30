# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_signed_div_rem
from warplib.maths.utils import felt_to_uint256
from warplib.maths.int_conversions import (
    warp_int8_to_int256, warp_int16_to_int256, warp_int24_to_int256, warp_int32_to_int256,
    warp_int40_to_int256, warp_int48_to_int256, warp_int56_to_int256, warp_int64_to_int256,
    warp_int72_to_int256, warp_int80_to_int256, warp_int88_to_int256, warp_int96_to_int256,
    warp_int104_to_int256, warp_int112_to_int256, warp_int120_to_int256, warp_int128_to_int256,
    warp_int136_to_int256, warp_int144_to_int256, warp_int152_to_int256, warp_int160_to_int256,
    warp_int168_to_int256, warp_int176_to_int256, warp_int184_to_int256, warp_int192_to_int256,
    warp_int200_to_int256, warp_int208_to_int256, warp_int216_to_int256, warp_int224_to_int256,
    warp_int232_to_int256, warp_int240_to_int256, warp_int248_to_int256, warp_int256_to_int8,
    warp_int256_to_int16, warp_int256_to_int24, warp_int256_to_int32, warp_int256_to_int40,
    warp_int256_to_int48, warp_int256_to_int56, warp_int256_to_int64, warp_int256_to_int72,
    warp_int256_to_int80, warp_int256_to_int88, warp_int256_to_int96, warp_int256_to_int104,
    warp_int256_to_int112, warp_int256_to_int120, warp_int256_to_int128, warp_int256_to_int136,
    warp_int256_to_int144, warp_int256_to_int152, warp_int256_to_int160, warp_int256_to_int168,
    warp_int256_to_int176, warp_int256_to_int184, warp_int256_to_int192, warp_int256_to_int200,
    warp_int256_to_int208, warp_int256_to_int216, warp_int256_to_int224, warp_int256_to_int232,
    warp_int256_to_int240, warp_int256_to_int248)

func warp_div_signed8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int8_to_int256(lhs)
    let (rhs_256) = warp_int8_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int8(res256)
    return (truncated)
end
func warp_div_signed16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int16_to_int256(lhs)
    let (rhs_256) = warp_int16_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int16(res256)
    return (truncated)
end
func warp_div_signed24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int24_to_int256(lhs)
    let (rhs_256) = warp_int24_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int24(res256)
    return (truncated)
end
func warp_div_signed32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int32_to_int256(lhs)
    let (rhs_256) = warp_int32_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int32(res256)
    return (truncated)
end
func warp_div_signed40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int40_to_int256(lhs)
    let (rhs_256) = warp_int40_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int40(res256)
    return (truncated)
end
func warp_div_signed48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int48_to_int256(lhs)
    let (rhs_256) = warp_int48_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int48(res256)
    return (truncated)
end
func warp_div_signed56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int56_to_int256(lhs)
    let (rhs_256) = warp_int56_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int56(res256)
    return (truncated)
end
func warp_div_signed64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int64_to_int256(lhs)
    let (rhs_256) = warp_int64_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int64(res256)
    return (truncated)
end
func warp_div_signed72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int72_to_int256(lhs)
    let (rhs_256) = warp_int72_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int72(res256)
    return (truncated)
end
func warp_div_signed80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int80_to_int256(lhs)
    let (rhs_256) = warp_int80_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int80(res256)
    return (truncated)
end
func warp_div_signed88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int88_to_int256(lhs)
    let (rhs_256) = warp_int88_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int88(res256)
    return (truncated)
end
func warp_div_signed96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int96_to_int256(lhs)
    let (rhs_256) = warp_int96_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int96(res256)
    return (truncated)
end
func warp_div_signed104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int104_to_int256(lhs)
    let (rhs_256) = warp_int104_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int104(res256)
    return (truncated)
end
func warp_div_signed112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int112_to_int256(lhs)
    let (rhs_256) = warp_int112_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int112(res256)
    return (truncated)
end
func warp_div_signed120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int120_to_int256(lhs)
    let (rhs_256) = warp_int120_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int120(res256)
    return (truncated)
end
func warp_div_signed128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int128_to_int256(lhs)
    let (rhs_256) = warp_int128_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int128(res256)
    return (truncated)
end
func warp_div_signed136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int136_to_int256(lhs)
    let (rhs_256) = warp_int136_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int136(res256)
    return (truncated)
end
func warp_div_signed144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int144_to_int256(lhs)
    let (rhs_256) = warp_int144_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int144(res256)
    return (truncated)
end
func warp_div_signed152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int152_to_int256(lhs)
    let (rhs_256) = warp_int152_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int152(res256)
    return (truncated)
end
func warp_div_signed160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int160_to_int256(lhs)
    let (rhs_256) = warp_int160_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int160(res256)
    return (truncated)
end
func warp_div_signed168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int168_to_int256(lhs)
    let (rhs_256) = warp_int168_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int168(res256)
    return (truncated)
end
func warp_div_signed176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int176_to_int256(lhs)
    let (rhs_256) = warp_int176_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int176(res256)
    return (truncated)
end
func warp_div_signed184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int184_to_int256(lhs)
    let (rhs_256) = warp_int184_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int184(res256)
    return (truncated)
end
func warp_div_signed192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int192_to_int256(lhs)
    let (rhs_256) = warp_int192_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int192(res256)
    return (truncated)
end
func warp_div_signed200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int200_to_int256(lhs)
    let (rhs_256) = warp_int200_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int200(res256)
    return (truncated)
end
func warp_div_signed208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int208_to_int256(lhs)
    let (rhs_256) = warp_int208_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int208(res256)
    return (truncated)
end
func warp_div_signed216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int216_to_int256(lhs)
    let (rhs_256) = warp_int216_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int216(res256)
    return (truncated)
end
func warp_div_signed224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int224_to_int256(lhs)
    let (rhs_256) = warp_int224_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int224(res256)
    return (truncated)
end
func warp_div_signed232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int232_to_int256(lhs)
    let (rhs_256) = warp_int232_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int232(res256)
    return (truncated)
end
func warp_div_signed240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int240_to_int256(lhs)
    let (rhs_256) = warp_int240_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int240(res256)
    return (truncated)
end
func warp_div_signed248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (local lhs_256) = warp_int248_to_int256(lhs)
    let (rhs_256) = warp_int248_to_int256(rhs)
    let (res256, _) = uint256_signed_div_rem(lhs_256, rhs_256)
    let (truncated) = warp_int256_to_int248(res256)
    return (truncated)
end
func warp_div_signed256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    let (res : Uint256, _) = uint256_signed_div_rem(lhs, rhs)
    return (res)
end

# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_mul
from warplib.maths.utils import felt_to_uint256

func mul_unsafe8{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xff)
end
func mul_unsafe16{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffff)
end
func mul_unsafe24{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffff)
end
func mul_unsafe32{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffff)
end
func mul_unsafe40{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffff)
end
func mul_unsafe48{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffff)
end
func mul_unsafe56{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffff)
end
func mul_unsafe64{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffff)
end
func mul_unsafe72{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffffff)
end
func mul_unsafe80{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffffffff)
end
func mul_unsafe88{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffffffffff)
end
func mul_unsafe96{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffffffffffff)
end
func mul_unsafe104{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffffffffffffff)
end
func mul_unsafe112{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffffffffffffffff)
end
func mul_unsafe120{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs * rhs, 0xffffffffffffffffffffffffffffff)
end
func mul_unsafe128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0x0)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256, _) = uint256_mul(l256, r256)
    let (high) = bitwise_and(res.high, 0xffffffffffffffffffffffffffffff)
    return (res.low + 0x100000000000000000000000000000000 * high)
end
func mul_unsafe256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    let (res : Uint256, _) = uint256_mul(lhs, rhs)
    return (res)
end

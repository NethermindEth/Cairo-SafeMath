# AUTO-GENERATED
from starkware.cairo.common.uint256 import Uint256, uint256_mul
from starkware.cairo.common.math_cmp import is_le_felt
from warplib.maths.ge import ge256
from warplib.maths.utils import felt_to_uint256

func mul8{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xff)
    assert inRange = 1
    return (res)
end
func mul16{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffff)
    assert inRange = 1
    return (res)
end
func mul24{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffff)
    assert inRange = 1
    return (res)
end
func mul32{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffff)
    assert inRange = 1
    return (res)
end
func mul40{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffff)
    assert inRange = 1
    return (res)
end
func mul48{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffff)
    assert inRange = 1
    return (res)
end
func mul56{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul64{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul72{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul80{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul88{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul96{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul104{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul112{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul120{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs * rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func mul128{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(res, Uint256(0x0, 0x100000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul136{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(res, Uint256(0x0, 0x10000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul144{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(res, Uint256(0x0, 0x1000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul152{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(res, Uint256(0x0, 0x100000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul160{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(res, Uint256(0x0, 0x10000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul168{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x1000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul176{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x100000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul184{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x10000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul192{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x1000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul200{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x100000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul208{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x10000000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul216{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x1000000000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul224{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x100000000000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul232{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x10000000000000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul240{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x1000000000000000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul248{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    alloc_locals
    let (l256 : Uint256) = felt_to_uint256(lhs)
    let (r256 : Uint256) = felt_to_uint256(rhs)
    let (local res : Uint256) = mul256(l256, r256)
    let (outOfRange : felt) = ge256(
        res, Uint256(0x0, 0x100000000000000000000000000000000000000000000000000000000000000))
    assert outOfRange = 0
    return (res.low + 0x100000000000000000000000000000000 * res.high)
end
func mul256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    let (result : Uint256, overflow : Uint256) = uint256_mul(lhs, rhs)
    assert overflow.low = 0
    assert overflow.high = 0
    return (result)
end

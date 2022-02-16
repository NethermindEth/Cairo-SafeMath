# AUTO-GENERATED
from starkware.cairo.common.math_cmp import is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_add

func add8{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xff)
    assert inRange = 1
    return (res)
end
func add16{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffff)
    assert inRange = 1
    return (res)
end
func add24{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffff)
    assert inRange = 1
    return (res)
end
func add32{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffff)
    assert inRange = 1
    return (res)
end
func add40{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffff)
    assert inRange = 1
    return (res)
end
func add48{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffff)
    assert inRange = 1
    return (res)
end
func add56{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffff)
    assert inRange = 1
    return (res)
end
func add64{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add72{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add80{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add88{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add96{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add104{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add112{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add120{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add128{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add136{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add144{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add152{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add160{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add168{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add176{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add184{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add192{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add200{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add208{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add216{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add224{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(
        res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add232{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(
        res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add240{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(
        res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add248{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    let res = lhs + rhs
    let (inRange : felt) = is_le_felt(
        res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
    assert inRange = 1
    return (res)
end
func add256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    let (res : Uint256, carry : felt) = uint256_add(lhs, rhs)
    assert carry = 0
    return (res)
end

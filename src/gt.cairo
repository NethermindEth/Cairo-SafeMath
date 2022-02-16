from starkware.cairo.common.math_cmp import is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_eq, uint256_lt

func gt{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    if lhs == rhs:
        return (0)
    end
    return is_le_felt(rhs, lhs)
end

func gt256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : felt):
    alloc_locals
    let (local lt) = uint256_lt(lhs, rhs)
    let (eq) = uint256_eq(lhs, rhs)
    return ((1 - lt) * (1 - eq))
end

from starkware.cairo.common.math_cmp import is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_lt

func ge{range_check_ptr}(lhs : felt, rhs : felt) -> (res : felt):
    return is_le_felt(rhs, lhs)
end

func ge256{range_check_ptr}(op1 : Uint256, op2 : Uint256) -> (result : felt):
    let (lt : felt) = uint256_lt(op1, op2)
    return (result=1 - lt)
end

# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.math_cmp import is_le_felt
from starkware.cairo.common.uint256 import Uint256, uint256_add

func warp_add_unsafe8{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xff)
end
func warp_add_unsafe16{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffff)
end
func warp_add_unsafe24{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffff)
end
func warp_add_unsafe32{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffff)
end
func warp_add_unsafe40{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffff)
end
func warp_add_unsafe48{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffff)
end
func warp_add_unsafe56{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffff)
end
func warp_add_unsafe64{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffff)
end
func warp_add_unsafe72{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffff)
end
func warp_add_unsafe80{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffff)
end
func warp_add_unsafe88{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffff)
end
func warp_add_unsafe96{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffff)
end
func warp_add_unsafe104{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffff)
end
func warp_add_unsafe112{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffff)
end
func warp_add_unsafe120{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffff)
end
func warp_add_unsafe128{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe136{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe144{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe152{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe160{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe168{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe176{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe184{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe192{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe200{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe208{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe216{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe224{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe232{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe240{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe248{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    return bitwise_and(lhs + rhs, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_add_unsafe256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    let (res : Uint256, _) = uint256_add(lhs, rhs)
    return (res)
end

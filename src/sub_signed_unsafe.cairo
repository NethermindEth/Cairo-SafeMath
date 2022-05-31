# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_sub

func warp_sub_signed_unsafe8{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80)
    let (right_msb : felt) = bitwise_and(rhs, 0x80)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xff)
end
func warp_sub_signed_unsafe16{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffff)
end
func warp_sub_signed_unsafe24{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffff)
end
func warp_sub_signed_unsafe32{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffff)
end
func warp_sub_signed_unsafe40{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffff)
end
func warp_sub_signed_unsafe48{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffff)
end
func warp_sub_signed_unsafe56{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffff)
end
func warp_sub_signed_unsafe64{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffff)
end
func warp_sub_signed_unsafe72{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffff)
end
func warp_sub_signed_unsafe80{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffff)
end
func warp_sub_signed_unsafe88{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffff)
end
func warp_sub_signed_unsafe96{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe104{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe112{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe120{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe128{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe136{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe144{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe152{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe160{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe168{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe176{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe184{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x8000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe192{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x800000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x800000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe200{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x80000000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(rhs, 0x80000000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe208{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(lhs, 0x8000000000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(
        rhs, 0x8000000000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe216{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(
        lhs, 0x800000000000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(
        rhs, 0x800000000000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe224{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(
        lhs, 0x80000000000000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(
        rhs, 0x80000000000000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe232{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(
        lhs, 0x8000000000000000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(
        rhs, 0x8000000000000000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x20000000000000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe240{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(
        lhs, 0x800000000000000000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(
        rhs, 0x800000000000000000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x2000000000000000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe248{bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    # First sign extend both operands
    let (left_msb : felt) = bitwise_and(
        lhs, 0x80000000000000000000000000000000000000000000000000000000000000)
    let (right_msb : felt) = bitwise_and(
        rhs, 0x80000000000000000000000000000000000000000000000000000000000000)
    let left_safe : felt = lhs + 2 * left_msb
    let right_safe : felt = rhs + 2 * right_msb

    # Now safely negate the rhs and add (l - r = l + (-r))
    let right_neg : felt = 0x200000000000000000000000000000000000000000000000000000000000000 - right_safe
    let extended_res : felt = left_safe + right_neg

    # Narrow and return
    return bitwise_and(
        extended_res, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func warp_sub_signed_unsafe256{range_check_ptr}(lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    return uint256_sub(lhs, rhs)
end

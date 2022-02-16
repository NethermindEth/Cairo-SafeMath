# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_sub
from warplib.maths.mul_unsafe import (
    mul_unsafe8, mul_unsafe16, mul_unsafe24, mul_unsafe32, mul_unsafe40, mul_unsafe48, mul_unsafe56,
    mul_unsafe64, mul_unsafe72, mul_unsafe80, mul_unsafe88, mul_unsafe96, mul_unsafe104,
    mul_unsafe112, mul_unsafe120, mul_unsafe128, mul_unsafe136, mul_unsafe144, mul_unsafe152,
    mul_unsafe160, mul_unsafe168, mul_unsafe176, mul_unsafe184, mul_unsafe192, mul_unsafe200,
    mul_unsafe208, mul_unsafe216, mul_unsafe224, mul_unsafe232, mul_unsafe240, mul_unsafe248,
    mul_unsafe256)

func _repeated_multiplication8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication8(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe8(op, x)
        return (res)
    end
end
func exp_unsafe8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication8(lhs, rhs)
        end
    end
end
func _repeated_multiplication16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication16(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe16(op, x)
        return (res)
    end
end
func exp_unsafe16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication16(lhs, rhs)
        end
    end
end
func _repeated_multiplication24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication24(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe24(op, x)
        return (res)
    end
end
func exp_unsafe24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication24(lhs, rhs)
        end
    end
end
func _repeated_multiplication32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication32(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe32(op, x)
        return (res)
    end
end
func exp_unsafe32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication32(lhs, rhs)
        end
    end
end
func _repeated_multiplication40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication40(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe40(op, x)
        return (res)
    end
end
func exp_unsafe40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication40(lhs, rhs)
        end
    end
end
func _repeated_multiplication48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication48(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe48(op, x)
        return (res)
    end
end
func exp_unsafe48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication48(lhs, rhs)
        end
    end
end
func _repeated_multiplication56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication56(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe56(op, x)
        return (res)
    end
end
func exp_unsafe56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication56(lhs, rhs)
        end
    end
end
func _repeated_multiplication64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication64(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe64(op, x)
        return (res)
    end
end
func exp_unsafe64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication64(lhs, rhs)
        end
    end
end
func _repeated_multiplication72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication72(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe72(op, x)
        return (res)
    end
end
func exp_unsafe72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication72(lhs, rhs)
        end
    end
end
func _repeated_multiplication80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication80(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe80(op, x)
        return (res)
    end
end
func exp_unsafe80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication80(lhs, rhs)
        end
    end
end
func _repeated_multiplication88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication88(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe88(op, x)
        return (res)
    end
end
func exp_unsafe88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication88(lhs, rhs)
        end
    end
end
func _repeated_multiplication96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication96(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe96(op, x)
        return (res)
    end
end
func exp_unsafe96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication96(lhs, rhs)
        end
    end
end
func _repeated_multiplication104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication104(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe104(op, x)
        return (res)
    end
end
func exp_unsafe104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication104(lhs, rhs)
        end
    end
end
func _repeated_multiplication112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication112(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe112(op, x)
        return (res)
    end
end
func exp_unsafe112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication112(lhs, rhs)
        end
    end
end
func _repeated_multiplication120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication120(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe120(op, x)
        return (res)
    end
end
func exp_unsafe120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication120(lhs, rhs)
        end
    end
end
func _repeated_multiplication128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication128(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe128(op, x)
        return (res)
    end
end
func exp_unsafe128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication128(lhs, rhs)
        end
    end
end
func _repeated_multiplication136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication136(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe136(op, x)
        return (res)
    end
end
func exp_unsafe136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication136(lhs, rhs)
        end
    end
end
func _repeated_multiplication144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication144(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe144(op, x)
        return (res)
    end
end
func exp_unsafe144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication144(lhs, rhs)
        end
    end
end
func _repeated_multiplication152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication152(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe152(op, x)
        return (res)
    end
end
func exp_unsafe152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication152(lhs, rhs)
        end
    end
end
func _repeated_multiplication160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication160(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe160(op, x)
        return (res)
    end
end
func exp_unsafe160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication160(lhs, rhs)
        end
    end
end
func _repeated_multiplication168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication168(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe168(op, x)
        return (res)
    end
end
func exp_unsafe168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication168(lhs, rhs)
        end
    end
end
func _repeated_multiplication176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication176(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe176(op, x)
        return (res)
    end
end
func exp_unsafe176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication176(lhs, rhs)
        end
    end
end
func _repeated_multiplication184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication184(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe184(op, x)
        return (res)
    end
end
func exp_unsafe184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication184(lhs, rhs)
        end
    end
end
func _repeated_multiplication192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication192(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe192(op, x)
        return (res)
    end
end
func exp_unsafe192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication192(lhs, rhs)
        end
    end
end
func _repeated_multiplication200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication200(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe200(op, x)
        return (res)
    end
end
func exp_unsafe200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication200(lhs, rhs)
        end
    end
end
func _repeated_multiplication208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication208(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe208(op, x)
        return (res)
    end
end
func exp_unsafe208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication208(lhs, rhs)
        end
    end
end
func _repeated_multiplication216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication216(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe216(op, x)
        return (res)
    end
end
func exp_unsafe216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication216(lhs, rhs)
        end
    end
end
func _repeated_multiplication224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication224(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe224(op, x)
        return (res)
    end
end
func exp_unsafe224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication224(lhs, rhs)
        end
    end
end
func _repeated_multiplication232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication232(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe232(op, x)
        return (res)
    end
end
func exp_unsafe232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication232(lhs, rhs)
        end
    end
end
func _repeated_multiplication240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication240(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe240(op, x)
        return (res)
    end
end
func exp_unsafe240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication240(lhs, rhs)
        end
    end
end
func _repeated_multiplication248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication248(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_unsafe248(op, x)
        return (res)
    end
end
func exp_unsafe248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
        res : felt):
    if lhs * (lhs - 1) * (rhs - 1) == 0:
        return (lhs)
    else:
        if rhs == 0:
            return (1)
        else:
            return _repeated_multiplication248(lhs, rhs)
        end
    end
end
func _repeated_multiplication256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : Uint256, count : Uint256) -> (res : Uint256):
    if count.low == 0:
        if count.high == 0:
            return (Uint256(1, 0))
        end
    end
    let (decr) = uint256_sub(count, Uint256(1, 0))
    let (x) = _repeated_multiplication256(op, decr)
    let (res) = mul_unsafe256(op, x)
    return (res)
end
func exp_unsafe256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        lhs : Uint256, rhs : Uint256) -> (res : Uint256):
    if lhs.high == 0:
        if lhs.low == 0:
            return (Uint256(0, 0))
        end
    end
    if rhs.high == 0:
        if rhs.low == 0:
            return (Uint256(1, 0))
        end
    end
    return _repeated_multiplication256(lhs, rhs)
end

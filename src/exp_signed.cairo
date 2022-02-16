# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_and
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_sub
from warplib.maths.mul_signed import (
    mul_signed8, mul_signed16, mul_signed24, mul_signed32, mul_signed40,
    mul_signed48, mul_signed56, mul_signed64, mul_signed72, mul_signed80,
    mul_signed88, mul_signed96, mul_signed104, mul_signed112,
    mul_signed120, mul_signed128, mul_signed136, mul_signed144,
    mul_signed152, mul_signed160, mul_signed168, mul_signed176,
    mul_signed184, mul_signed192, mul_signed200, mul_signed208,
    mul_signed216, mul_signed224, mul_signed232, mul_signed240,
    mul_signed248, mul_signed256)

func _repeated_multiplication8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
        op : felt, count : felt) -> (res : felt):
    alloc_locals
    if count == 0:
        return (1)
    else:
        let (x) = _repeated_multiplication8(op, count - 1)
        local bitwise_ptr : BitwiseBuiltin* = bitwise_ptr
        let (res) = mul_signed8(op, x)
        return (res)
    end
end
func exp_signed8{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed16(op, x)
        return (res)
    end
end
func exp_signed16{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed24(op, x)
        return (res)
    end
end
func exp_signed24{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed32(op, x)
        return (res)
    end
end
func exp_signed32{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed40(op, x)
        return (res)
    end
end
func exp_signed40{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed48(op, x)
        return (res)
    end
end
func exp_signed48{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed56(op, x)
        return (res)
    end
end
func exp_signed56{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed64(op, x)
        return (res)
    end
end
func exp_signed64{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed72(op, x)
        return (res)
    end
end
func exp_signed72{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed80(op, x)
        return (res)
    end
end
func exp_signed80{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed88(op, x)
        return (res)
    end
end
func exp_signed88{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed96(op, x)
        return (res)
    end
end
func exp_signed96{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed104(op, x)
        return (res)
    end
end
func exp_signed104{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed112(op, x)
        return (res)
    end
end
func exp_signed112{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed120(op, x)
        return (res)
    end
end
func exp_signed120{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed128(op, x)
        return (res)
    end
end
func exp_signed128{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed136(op, x)
        return (res)
    end
end
func exp_signed136{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed144(op, x)
        return (res)
    end
end
func exp_signed144{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed152(op, x)
        return (res)
    end
end
func exp_signed152{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed160(op, x)
        return (res)
    end
end
func exp_signed160{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed168(op, x)
        return (res)
    end
end
func exp_signed168{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed176(op, x)
        return (res)
    end
end
func exp_signed176{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed184(op, x)
        return (res)
    end
end
func exp_signed184{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed192(op, x)
        return (res)
    end
end
func exp_signed192{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed200(op, x)
        return (res)
    end
end
func exp_signed200{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed208(op, x)
        return (res)
    end
end
func exp_signed208{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed216(op, x)
        return (res)
    end
end
func exp_signed216{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed224(op, x)
        return (res)
    end
end
func exp_signed224{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed232(op, x)
        return (res)
    end
end
func exp_signed232{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed240(op, x)
        return (res)
    end
end
func exp_signed240{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
        let (res) = mul_signed248(op, x)
        return (res)
    end
end
func exp_signed248{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(lhs : felt, rhs : felt) -> (
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
    let (res) = mul_signed256(op, x)
    return (res)
end
func exp_signed256{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(
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

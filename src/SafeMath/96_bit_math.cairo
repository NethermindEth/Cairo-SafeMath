
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.math import (
    assert_lt, sign, unsigned_div_rem, signed_div_rem,
    assert_le_felt, split_felt)
from starkware.cairo.common.math_cmp import is_le
from starkware.cairo.common.bitwise import (bitwise_and, bitwise_or, 
    bitwise_not, bitwise_xor)
from constants import MAX_96BIT

func uint96_add{range_check_ptr}(a : felt, b : felt) -> (res : felt):
    tempvar c = a + b
    assert_lt_felt(c, MAX_96BIT)
    assert_lt_felt(a, c)
    return (res=c)
end

func u_check_mul_overflow96{range_check_ptr, bitiwise_ptr : BitwiseBuiltin*}(
    a : felt, b : felt):
    let (a_h) = bitwise_and(a, MAX_48BIT -1)
    tempvar a_l = (a - a_h)/MAX_48BIT
    let (b_h) = bitwise_and(b, MAX_48BIT -1)
    tempvar b_l = (b - b_h)/MAX_48BIT
    tempvar p1 = a_h * b_h
    tempvar p2 = a_h * b_l
    tempvar p3 = a_l * b_h
    tempvar p4 = a_l * b_l
    let (check_inter) = uint96_add(p2 , p3)
    let (check) = uint96_add(chec_inter, p4/MAX_48BIT)
    assert p1 = 0
    assert_le(check, MAX_48BIT)
    return ()
end

func uint96_sub{range_check_ptr}(a : felt, b : felt) -> (res : felt):
    alloc_locals
    assert_lt_felt(a, MAX_96BIT)
    assert_lt_felt(b, MAX_96BIT)
    assert_lt_felt(b,a)
    tempvar res = a - b
    return (res=res)
end

func uint96_mul{range_check_ptr}(a : felt, b : felt) -> (res : felt):
    u_check_mul_overflow96(a, b)
    tempvar res = a * b
    return (res=res)
end


func uint96_shl{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}(a : felt, b : felt) -> (res : felt):
    alloc_locals
    assert_le(b, 96)
    let (shift_mul) = pow(2, b)
    u_check_mul_overflow96(a, shift_mul)
    tempvar res = uint96_mul(a, shift_mul)
    return (res=res)
end

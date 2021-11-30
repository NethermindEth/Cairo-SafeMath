#!/usr/bin/env python
from shutil import copyfile
import os
import sysconfig
VER = "0.1.0"
"""
========================================
                EXAMPLE
========================================
    0<= x < 2^x can be expressed as x = a * 2^128 + b, where 0 <= a < 2^(x - 128) and 0 <= b < 2^128.
    We can use split_felt to get a & b. We need 0 <= a <= 2^(200-128) and 0 <= b <= 2^128
    Let's say we want to make sure that eveything is less than 

    tempvar a_237 = 220855883097298041197912187592864814478435487109452369765200775161577472
    tempvar big = a_238 * MAX_14BIT
    let (a,b) = split_felt(big)
    assert_le_felt(a, MAX_123BIT)
    assert_le_felt(b, MAX_128BIT)
    serialize_word(a)
    serialize_word(b)
    return ()

"""

def main():
    base_path =  os.path.join(sysconfig.get_paths()["purelib"], f"SafeMath")
    if not os.path.exists(base_path):
        os.mkdir(base_path)
    for i in range(8, 249,8):
        file_name = os.path.join(base_path, f"uint{i}_math.cairo")
        MAX_BIT_HALF = f"MAX_{int(i/2)}BIT"
        MAX_BIT = f"MAX_{i}BIT"
        math_functions = f"""
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.pow import pow
from starkware.cairo.common.math import (
    assert_lt, assert_lt_felt, sign, unsigned_div_rem, signed_div_rem,
    assert_le, assert_le_felt, split_felt)
from starkware.cairo.common.math_cmp import is_le
from starkware.cairo.common.bitwise import (bitwise_and, bitwise_or, 
    bitwise_not, bitwise_xor)
from SafeMath.constants import MAX_{i}BIT
from SafeMath.constants import MAX_{int(i/2)}BIT

func uint{i}_add{{range_check_ptr}}(a : felt, b : felt) -> (res : felt):
    tempvar c = a + b
    assert_lt_felt(c, {MAX_BIT})
    assert_lt_felt(a, c)
    return (res=c)
end

func u_check_mul_overflow{i}{{range_check_ptr, bitiwise_ptr : BitwiseBuiltin*}}(
    a : felt, b : felt):
    let (a_h) = bitwise_and(a, {MAX_BIT_HALF} -1)
    tempvar a_l = (a - a_h)/{MAX_BIT_HALF}
    let (b_h) = bitwise_and(b, {MAX_BIT_HALF} -1)
    tempvar b_l = (b - b_h)/{MAX_BIT_HALF}
    tempvar p1 = a_h * b_h
    tempvar p2 = a_h * b_l
    tempvar p3 = a_l * b_h
    tempvar p4 = a_l * b_l
    let (check_inter) = uint{i}_add(p2 , p3)
    let (check) = uint{i}_add(check_inter, p4/{MAX_BIT_HALF})
    assert p1 = 0
    assert_le(check, {MAX_BIT_HALF})
    return ()
end

func uint{i}_sub{{range_check_ptr}}(a : felt, b : felt) -> (res : felt):
    alloc_locals
    assert_lt_felt(a, {MAX_BIT})
    assert_lt_felt(b, {MAX_BIT})
    assert_lt_felt(b,a)
    tempvar res = a - b
    return (res=res)
end

func uint{i}_mul{{range_check_ptr}}(a : felt, b : felt) -> (res : felt):
    u_check_mul_overflow{i}(a, b)
    tempvar res = a * b
    return (res=res)
end


func uint{i}_shl{{range_check_ptr, bitwise_ptr : BitwiseBuiltin*}}(a : felt, b : felt) -> (res : felt):
    alloc_locals
    assert_le(b, {i})
    let (shift_mul) = pow(2, b)
    u_check_mul_overflow{i}(a, shift_mul)
    tempvar res = uint{i}_mul(a, shift_mul)
    return (res=res)
end
"""
        with open(file_name, 'w') as f:
            f.write(math_functions)
    copyfile("src/SafeMath/constants.cairo", os.path.join(base_path, "constants.cairo"))
if __name__ == "__main__":
   main() 
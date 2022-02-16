# AUTO-GENERATED
from starkware.cairo.common.bitwise import bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.uint256 import Uint256, uint256_not

func bitwise_not8{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xff)
end
func bitwise_not16{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffff)
end
func bitwise_not24{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffff)
end
func bitwise_not32{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffff)
end
func bitwise_not40{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffff)
end
func bitwise_not48{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffff)
end
func bitwise_not56{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffff)
end
func bitwise_not64{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffff)
end
func bitwise_not72{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffff)
end
func bitwise_not80{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffff)
end
func bitwise_not88{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffff)
end
func bitwise_not96{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffff)
end
func bitwise_not104{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffff)
end
func bitwise_not112{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffff)
end
func bitwise_not120{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffff)
end
func bitwise_not128{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffff)
end
func bitwise_not136{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffff)
end
func bitwise_not144{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffff)
end
func bitwise_not152{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not160{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not168{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not176{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not184{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not192{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not200{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not208{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not216{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not224{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not232{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not240{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not248{bitwise_ptr : BitwiseBuiltin*}(op : felt) -> (res : felt):
    return bitwise_xor(op, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
end
func bitwise_not256{range_check_ptr}(op : Uint256) -> (res : Uint256):
    return uint256_not(op)
end

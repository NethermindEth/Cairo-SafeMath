from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.uint256 import Uint256, uint256_add, uint256_eq, uint256_mul
from warplib.maths.utils import felt_to_uint256

# ------------------------------------------------------------------------------
# Warp memory schema
# Memory is represented as a time-ordered list of writes
# Reads work by starting at the latest and looking for writes to the cell to read
# Each object written has a unique name, and is comprised of one or more felts
# placed at incrementing offsets
#
# Special cells:
# Name = 0, offset = 0 contains the most recently generated name
# For arrays, the length is stored at offsets that
# ------------------------------------------------------------------------------

struct MemCell:
    member name : felt
    member offset : Uint256
    member value : felt
end

func idx{range_check_ptr}(arrayIndex : Uint256, width : felt, offset : felt) -> (
        feltIndex : Uint256):
    let (width256) = felt_to_uint256(width)
    let (offset256) = felt_to_uint256(offset)
    let (start : Uint256, overflow : Uint256) = uint256_mul(arrayIndex, width256)
    assert overflow.low = 0
    assert overflow.high = 0
    let (result : Uint256, carry : felt) = uint256_add(start, offset256)
    assert carry = 0
    return (result)
end

func memory_init() -> (memory : MemCell*):
    let (memory : MemCell*) = alloc()
    assert memory.name = 0
    assert memory.offset.low = 0
    assert memory.offset.high = 0
    assert memory.value = 0
    return (memory)
end

func create_array{range_check_ptr, memory : MemCell*}(len : Uint256) -> (name : felt):
    alloc_locals
    # Create a unique identifier for the array
    let (local name : felt) = _get_next_name()
    # Store the length starting at offset 0
    _set_array_length(name, len)
    # Fill the rest of the elements with 0s
    _init_arr(name, len, Uint256(0, 0))
    return (name=name)
end

func memory_read{range_check_ptr}(memory : MemCell*, name : felt, offset : Uint256) -> (res : felt):
    let (is_correct_cell : felt) = _at_current_cell(memory, name, offset)
    if is_correct_cell == 1:
        return (res=memory.value)
    else:
        return memory_read(memory - MemCell.SIZE, name, offset)
    end
end

func memory_write{memory : MemCell*}(name : felt, offset : Uint256, value : felt) -> ():
    # First increment memory, then set the properties of the new cell
    # This means that memory always points to a valid cell
    let memory = memory + MemCell.SIZE
    assert memory.name = name
    assert memory.offset.low = offset.low
    assert memory.offset.high = offset.high
    assert memory.value = value
    return ()
end

# this is a uint256 that should never be generated from arithmetic or felt conversion
# this allows reads to use the full [0, 2^256) without clashing
const _len_offset_low = 2 ** 128
const _len_offset_high = 2 ** 128 + 1

func get_array_length{range_check_ptr, memory : MemCell*}(name : felt) -> (len : Uint256):
    alloc_locals
    let (local low : felt) = memory_read(memory, name, Uint256(_len_offset_low, 0))
    let (high : felt) = memory_read(memory, name, Uint256(_len_offset_high, 0))
    return (len=Uint256(low, high))
end

# ------------------------------implementation----------------------------------

func _set_array_length{memory : MemCell*}(name : felt, len : Uint256) -> ():
    memory_write(name, Uint256(_len_offset_low, 0), len.low)
    return memory_write(name, Uint256(_len_offset_high, 0), len.high)
end

func _at_current_cell{range_check_ptr}(memory : MemCell*, name : felt, offset : Uint256) -> (
        res : felt):
    if memory.name != name:
        return (0)
    end
    return uint256_eq(memory.offset, offset)
end

func _get_next_name{range_check_ptr, memory : MemCell*}() -> (name : felt):
    let (oldName : felt) = memory_read(memory, 0, Uint256(0, 0))
    let newName = oldName + 1
    memory_write(0, Uint256(0, 0), newName)
    return (name=newName)
end

# recurse along the array, setting the length to the length and the values to 0
# start at curr = 0 and end once curr = len
func _init_arr{range_check_ptr, memory : MemCell*}(name : felt, len : Uint256, curr : Uint256) -> (
        ):
    let (eq : felt) = uint256_eq(curr, len)
    if eq == 0:
        memory_write(name, curr, 0)
        let (next : Uint256, _) = uint256_add(curr, Uint256(1, 0))
        return _init_arr(name, len, next)
    else:
        memory_write(name, curr, 0)
        return ()
    end
end

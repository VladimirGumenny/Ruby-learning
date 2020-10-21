require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  nums.delete(val)
  nums.size
end

assert_equal(2, remove_element([3,2,2,3], val = 3))
assert_equal(5, remove_element([0,1,2,2,3,0,4,2], val = 2))
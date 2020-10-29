require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return 0 if nums.first > target
  nums.each_with_index { |v, idx| return idx if v >= target }
  nums.size
end

nums = [1,3,5,6]
target = 5
expected = 2
assert_equal(expected, search_insert(nums, target))

nums = [1,3,5,6]
target = 2
expected = 1
assert_equal(expected, search_insert(nums, target))

nums = [1,3,5,6]
target = 7
expected = 4
assert_equal(expected, search_insert(nums, target))

nums = [1,3,5,6]
target = 0
expected = 0
assert_equal(expected, search_insert(nums, target))

nums = [1]
target = 0
expected = 0
assert_equal(expected, search_insert(nums, target))

require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.uniq != nums
end

# Example 1:
nums = [1,2,3,1]
expected = true
assert_equal(expected, contains_duplicate(nums))

# Example 2:
nums = [1,2,3,4]
expected = false
assert_equal(expected, contains_duplicate(nums))

# Example 3:
nums = [1,1,1,3,3,4,3,2,4,2]
expected = true
assert_equal(expected, contains_duplicate(nums))


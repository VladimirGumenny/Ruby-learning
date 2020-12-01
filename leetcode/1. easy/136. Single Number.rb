require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.sort!
  (0..nums.size / 2).each do |i|
    return nums[i * 2] unless nums[i * 2] == nums[i * 2 + 1]
  end
end

# Example 1:
nums = [2,2,1]
expected = 1
assert_equal(expected, single_number(nums))

# Example 2:
nums = [4,1,2,1,2]
expected = 4
assert_equal(expected, single_number(nums))

# Example 3:
nums = [1]
expected = 1
assert_equal(expected, single_number(nums))

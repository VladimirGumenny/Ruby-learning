require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums[0]
  sum = nums[0]

  (1...nums.size).each do |idx|
    new_sum = sum + nums[idx]
    sum = nums[idx] > new_sum ? nums[idx] : new_sum
    max = sum if sum > max
  end
  max
end

nums = [1, 2]
expected = 3
assert_equal(expected, max_sub_array(nums))

# Example 1:
nums = [-2,1,-3,4,-1,2,1,-5,4]
expected = 6
assert_equal(expected, max_sub_array(nums))
# Explanation: [4,-1,2,1] has the largest sum = 6.

#     Example 2:
nums = [1]
expected = 1
assert_equal(expected, max_sub_array(nums))

# Example 3:
nums = [0]
expected = 0
assert_equal(expected, max_sub_array(nums))

# Example 4:
nums = [-1]
expected = -1
assert_equal(expected, max_sub_array(nums))

# Example 5:
nums = [-2147483647]
expected = -2147483647
assert_equal(expected, max_sub_array(nums))

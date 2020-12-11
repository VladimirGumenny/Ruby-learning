require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.size == 1

  r = []
  r[0] = nums[0]
  r[1] = [nums[0], nums[1]].max
  (2...nums.size).each do |i|
    r[i] = [r[i-2] + nums[i], r[i-1]].max
  end

  r[-1]
end

nums = [1,2,2,1]
expected = 3
assert_equal(expected, rob(nums))

nums = [2,1,1,2]
expected = 4
assert_equal(expected, rob(nums))

nums = [1,2,3,1]
expected = 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
#   Total amount you can rob = 1 + 3 = 4.
assert_equal(expected, rob(nums))

# Example 2:
nums = [2,7,9,3,1]
expected = 12
# Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
#   Total amount you can rob = 2 + 9 + 1 = 12.
assert_equal(expected, rob(nums))
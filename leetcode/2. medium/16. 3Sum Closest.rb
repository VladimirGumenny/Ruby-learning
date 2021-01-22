require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  diff = nil
  (0...nums.size).each do |i|
    lo = i + 1
    hi = nums.size - 1
    while lo < hi do
      sum = nums[i] + nums[lo] + nums[hi]
      diff = target - sum if diff.nil? || (sum - target).abs < diff.abs
      return target if diff.zero?
      sum < target ? lo += 1 : hi -= 1
    end
  end
  target - diff
end

nums = [-1,2,1,-4]
target = 1
expected = 2
assert_equal(expected, three_sum_closest(nums, target))
# Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
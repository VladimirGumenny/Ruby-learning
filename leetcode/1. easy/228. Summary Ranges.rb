require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.empty?

  start_idx = 0
  res = []
  (0...nums.size - 1).each do |idx|
    next if nums[idx + 1] - nums[idx] == 1

    res << ((idx == start_idx) ? "#{nums[idx]}" : "#{nums[start_idx]}->#{nums[idx]}")
    start_idx = idx + 1
  end

  res << ((nums.size - 1 == start_idx) ? "#{nums[-1]}" : "#{nums[start_idx]}->#{nums[-1]}")
  res
end

# Example 1:
nums = [0, 1, 2, 4, 5, 7]
expected = ["0->2", "4->5", "7"]
# Explanation: The ranges are:
# [0,2] --> "0->2"
# [4,5] --> "4->5"
# [7,7] --> "7"
assert_equal(expected, summary_ranges(nums))

# Example 2:
nums = [0, 2, 3, 4, 6, 8, 9]
expected = ["0", "2->4", "6", "8->9"]
# Explanation: The ranges are:
# [0,0] --> "0"
# [2,4] --> "2->4"
# [6,6] --> "6"
# [8,9] --> "8->9"
assert_equal(expected, summary_ranges(nums))

# Example 3:
nums = []
expected = []
assert_equal(expected, summary_ranges(nums))

# Example 4:
nums = [-1]
expected = ["-1"]
assert_equal(expected, summary_ranges(nums))

# Example 5:
nums = [0]
expected = ["0"]
assert_equal(expected, summary_ranges(nums))

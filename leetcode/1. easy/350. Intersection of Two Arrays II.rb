require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  nums = nums1 & nums2
  nums.map do |num|
    [num] * [nums1.count(num), nums2.count(num)].min
  end.flatten
end

# Example 1:
nums1 = [1,2,2,1]
nums2 = [2,2]
expected = [2,2]
assert_equal(expected, intersect(nums1, nums2))

# Example 2:
nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
expected = [4,9]
assert_equal(expected, intersect(nums1, nums2))

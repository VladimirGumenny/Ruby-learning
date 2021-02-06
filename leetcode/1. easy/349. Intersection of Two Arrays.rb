require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  nums1 & nums2
end

# Example 1:
nums1 = [1,2,2,1]
nums2 = [2,2]
expected = [2]
assert_equal(expected, intersection(nums1, nums2))

# Example 2:
nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
expected = [9,4]
assert_equal(expected.sort, intersection(nums1, nums2).sort)


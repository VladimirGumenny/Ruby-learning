require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  idx1 = m - 1
  idx2 = n - 1
  idx_current = m + n - 1
  loop do
    break if idx_current < 0
    if idx1 < 0
      nums1[idx_current] = nums2[idx2]
      idx2 -= 1
      idx_current -= 1
      next
    end
    if idx2 < 0
      nums1[idx_current] = nums1[idx1]
      idx1 -= 1
      idx_current -= 1
      next
    end
    if nums1[idx1] > nums2[idx2]
      nums1[idx_current] = nums1[idx1]
      idx1 -= 1
    else
      nums1[idx_current] = nums2[idx2]
      idx2 -= 1
    end
    idx_current -= 1
  end
end

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3

expected = [1,2,2,3,5,6]
merge(nums1, m, nums2, n)
assert_equal(expected, nums1)

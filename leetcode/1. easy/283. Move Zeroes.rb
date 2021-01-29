require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  j = 0
  qnt = nums.size
  (0...qnt).each do |i|
    next if nums[i].zero?
    nums[j] = nums[i] unless i == j
    j += 1
  end
  nums[j...qnt] = [0] * (qnt - j)
  nums
end

nums = [0,1,0,3,12]
expected = [1,3,12,0,0]
assert_equal(expected, move_zeroes(nums))
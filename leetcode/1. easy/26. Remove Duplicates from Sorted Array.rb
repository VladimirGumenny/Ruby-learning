require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.size if nums.size <= 1
  curr_idx = 0
  (1..nums.size - 1).each do |i|
    unless nums[i] == nums[curr_idx]
      curr_idx += 1
      nums[curr_idx] = nums[i]
    end
  end
  nums = nums[0..curr_idx]
  curr_idx + 1
end

assert_equal(2, remove_duplicates([1,1,2]))
assert_equal(5, remove_duplicates([0,0,1,1,1,2,2,3,3,4]))

require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |i, idx1|
    goal = target - i
    idx2 = hash[goal]
    return [idx2, idx1] if idx2
    hash[i] = idx1
  end


  # nums.each_with_index do |i, idx1|
  #   (idx1 + 1...nums.size).each do |idx2|
  #     return [idx1, idx2] if i + nums[idx2] == target
  #   end
  # end
end


assert_equal two_sum([2,7,11,15], 9), [0,1]
assert_equal two_sum([3,2,4], 6), [1,2]
assert_equal two_sum([3,3], 6), [0,1]
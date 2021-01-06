require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  return false if nums.uniq.size == nums.size

  nums.each_with_index do |v, idx|
    return true if nums[idx + 1..idx + k].include? v

    # (idx + 1..idx + k).each do |j|
    #   return true if v == nums[j]
    # end
  end
  false
end

# Example 1:
nums = [1,2,3,1]
k = 3
expected = true
assert_equal(expected, contains_nearby_duplicate(nums, k))

# Example 2:
nums = [1,0,1,1]
k = 1
expected = true
assert_equal(expected, contains_nearby_duplicate(nums, k))

# Example 3:
nums = [1,2,3,1,2,3]
k = 2
expected = false
assert_equal(expected, contains_nearby_duplicate(nums, k))

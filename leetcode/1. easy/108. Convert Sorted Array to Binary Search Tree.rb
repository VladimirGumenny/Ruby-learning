require "test/unit/assertions"
include Test::Unit::Assertions

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.empty?

  idx = nums.size / 2
  node = TreeNode.new(nums[idx])

  if idx != 0
    node.left  = sorted_array_to_bst(nums[0..idx - 1])
    node.right = sorted_array_to_bst(nums[idx + 1..-1])
  end

  node
end


p sorted_array_to_bst([-10,-3,0,5,9])
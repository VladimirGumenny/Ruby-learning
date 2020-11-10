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

# @param {TreeNode} left
# @param {TreeNode} right
# @return {Boolean}
def is_symmetric2(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?
  return false unless left.val == right.val
  left.val == right.val && is_symmetric2(left.left, right.right) && is_symmetric2(left.right, right.left)
end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?

  is_symmetric2(root.left, root.right)
end

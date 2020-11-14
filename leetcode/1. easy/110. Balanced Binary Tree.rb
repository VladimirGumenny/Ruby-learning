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
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  find_height(root) != -1
end

# @param {TreeNode} node
# # @return {Integer}
def find_height(node)
  return 0 if node.nil?

  left = find_height(node.left)
  return -1 if left == -1
  right = find_height(node.right)
  return -1 if right == -1

  return -1 if (left - right).abs > 1
  [left, right].max + 1
end
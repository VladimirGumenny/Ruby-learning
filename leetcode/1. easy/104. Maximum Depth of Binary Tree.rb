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
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?
  return 1 if root.right.nil? && root.left.nil?
  [max_depth(root.right), max_depth(root.left)].max + 1
end


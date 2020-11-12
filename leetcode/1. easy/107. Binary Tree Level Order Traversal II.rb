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
# @return {Integer[][]}
def level_order_bottom(root)
  return [] if root.nil?

  @res = []
  level(root, 0)
  @res.reverse
end

def level(node, level)
  return if node.nil?

  @res[level] ||= []
  @res[level] << node.val
  level(node.left, level + 1)
  level(node.right, level + 1)
end
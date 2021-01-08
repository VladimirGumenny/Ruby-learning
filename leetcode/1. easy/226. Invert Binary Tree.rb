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
# @return {TreeNode}
def invert_tree(root)
  return root if root.nil?
  return root if root.left.nil? and root.right.nil?

  l = root.left
  r = root.right

  root.right = l.nil? ? nil : invert_tree(l)
  root.left = r.nil? ? nil : invert_tree(r)

  root
end
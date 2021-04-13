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

# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_direct_subtree(s, t)
  return true if (s.nil? and t.nil?)
  return false if (s.nil? or t.nil?)
  return true if (s.val == t.val and is_direct_subtree(s.left, t.left) and is_direct_subtree(s.right, t.right))
  false
end
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)
  return true if (s.nil? and t.nil?)
  return false if (s.nil? or t.nil?)
  return true if is_direct_subtree(s, t)
  return true if is_subtree(s.left, t)
  return true if is_subtree(s.right, t)
  false
end

s = TreeNode.new(3, TreeNode.new(4, TreeNode.new(1)), TreeNode.new(5, TreeNode.new(2)))
t = TreeNode.new(3, TreeNode.new(1), TreeNode.new(2))
expected = false
assert_equal(expected, is_subtree(s, t))
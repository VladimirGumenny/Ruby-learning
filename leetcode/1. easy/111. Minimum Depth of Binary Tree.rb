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
def min_depth(root)
  return 0 if root.nil?
  return 1 if root.left.nil? && root.right.nil?
  return min_depth(root.left) + 1 if root.right.nil?
  return min_depth(root.right) + 1 if root.left.nil?

  [min_depth(root.left), min_depth(root.right)].min + 1
end


root = TreeNode.new(2,
                    nil, TreeNode.new(3,
                                      nil, TreeNode.new(4,
                                                        nil, TreeNode.new(5,
                                                                          nil, TreeNode.new(6)))))
expected = 5
assert_equal(expected, min_depth(root))


root = TreeNode.new(3,
                    TreeNode.new(9), TreeNode.new(20,
                                                  TreeNode.new(15), TreeNode.new(7)
    )
)
expected = 2
assert_equal(expected, min_depth(root))


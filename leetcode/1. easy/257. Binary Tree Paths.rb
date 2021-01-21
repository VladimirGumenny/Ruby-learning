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
# @param [String] path
def binary_tree_helper(root, path)
  @res << path + root.val.to_s if root.left.nil? && root.right.nil?
  binary_tree_helper(root.left, path + root.val.to_s + '->') if root.left
  binary_tree_helper(root.right, path + root.val.to_s + '->') if root.right
end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  @res = []
  binary_tree_helper(root, '') if root
  @res
end

root = TreeNode.new(1,
                    TreeNode.new(2, nil, TreeNode.new(5)),
                    TreeNode.new(3))
x = binary_tree_paths(root)
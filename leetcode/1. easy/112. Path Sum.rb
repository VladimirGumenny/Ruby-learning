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
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    return false if root.nil?

    return true if root.left.nil? && root.right.nil? && sum == root.val

    has_path_sum(root.left, sum - root.val) || has_path_sum(root.right, sum - root.val)
end

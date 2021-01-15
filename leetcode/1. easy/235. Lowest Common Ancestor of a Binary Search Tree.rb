require "test/unit/assertions"
include Test::Unit::Assertions

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  node = root

  loop do
    if p.val > node.val && q.val > node.val
      node = node.right
    elsif p.val < node.val && q.val < node.val
      node = node.left
    else
      return node
    end
  end
end
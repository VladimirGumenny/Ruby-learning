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
def zigzag_level_order(root)
  res = []
  queue = []
  level = 0
  queue.push(root)
  while queue.any?
    arr = []
    size = queue.size
    size.times {
      node = queue.shift
      arr << node.val
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    }
    arr.reverse! if level.odd?
    res << arr
    level += 1
  end
  res
end

tree = TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))
expected = [
    [3],
    [20, 9],
    [15, 7]
]
actual = zigzag_level_order(tree)
assert_equal(expected, actual)

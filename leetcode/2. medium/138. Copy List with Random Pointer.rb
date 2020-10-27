require "test/unit/assertions"
include Test::Unit::Assertions

# Definition for Node.
class Node
  attr_accessor :val, :next, :random

  def initialize(val = 0)
    @val = val
    @next = nil
    @random = nil
  end
end

# @param {Node} node
# @return {Node}
def copyRandomList(head)
  @created ||= {}
  return nil if head.nil?

  return @created[head] if @created.include?(head)

  newNode = Node.new(head.val)
  @created[head] = newNode

  newNode.next = copyRandomList(head.next)
  newNode.random = copyRandomList(head.random)

  newNode
end

node0 = Node.new(7)
node1 = Node.new(13)
node2 = Node.new(11)
node3 = Node.new(10)
node4 = Node.new(1)

node0.next = node1
node1.next = node2
node2.next = node3
node3.next = node4

node1.random = node0
node2.random = node4
node3.random = node2
node4.random = node0

head = node0

actual = copyRandomList(head)
assert_equal(head, actual)


# head = [[7,null],[13,0],[11,4],[10,2],[1,0]]
# expected = [[7,null],[13,0],[11,4],[10,2],[1,0]]
# assert_equal(expected, copyRandomList(head))
#
# head = [[1,1],[2,1]]
# expected = [[1,1],[2,1]]
# assert_equal(expected, copyRandomList(head))
#
# head = [[3,null],[3,0],[3,null]]
# expected = [[3,null],[3,0],[3,null]]
# assert_equal(expected, copyRandomList(head))
#
# head = []
# expected = []
# assert_equal(expected, copyRandomList(head))


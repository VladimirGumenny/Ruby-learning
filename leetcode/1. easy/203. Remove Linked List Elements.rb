require "test/unit/assertions"
include Test::Unit::Assertions

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  return nil if head.nil?

  head.next = remove_elements(head.next, val)
  head.val == val ? head.next : head
end

head = ListNode.new(1, ListNode.new(2, ListNode.new(6, ListNode.new(3, ListNode.new(4, ListNode.new(5, ListNode.new(6)))))))
val = 6
p remove_elements(head, val)
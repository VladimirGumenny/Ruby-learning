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
# @return {ListNode}
def reverse_list(head)
  return head if head.nil?
  return head if head.next.nil?

  second = reverse_list(head.next)
  last = second
  until last.next.nil? do
    last = last.next
  end
  last.next = head
  head.next = nil
  second
end

head = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
expected = ListNode.new(5, ListNode.new(4, ListNode.new(3, ListNode.new(2, ListNode.new(1)))))
# assert_equal(expected, reverse_list(head))
p head
p expected
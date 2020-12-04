require "test/unit/assertions"
include Test::Unit::Assertions

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  return nil if headA.nil? || headB.nil?

  a = headA
  b = headB

  loop do
    return a if a == b
    a = a.nil? ? headB : a.next
    b = b.nil? ? headA : b.next
  end
end

a = ListNode.new(1)
b = a
puts getIntersectionNode(a, b)
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

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l0 = ListNode.new
  lr = l0
  o = 0
  until l1.nil? && l2.nil?
    s = o
    s += l1.val if l1
    s += l2.val if l2
    o = s / 10
    lr.next = ListNode.new(s % 10)
    lr = lr.next
    l1 = l1.next unless l1.nil?
    l2 = l2.next unless l2.nil?
  end
  lr.next = ListNode.new(1) unless o.zero?
  l0.next


  # loop do
  #   s = o
  #   s += l1.val if l1
  #   s += l2.val if l2
  #   o = s / 10
  #   lr.next = ListNode.new(s % 10)
  #   lr = lr.next
  #   if l1.nil? && l2.nil?
  #     lr.next = ListNode.new(1) unless o.zero?
  #     return l0.next
  #   end
  #   l1 = l1.next unless l1.nil?
  #   l2 = l2.next unless l2.nil?
  # end
end

l1 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9)))))))
l2 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9))))
p add_two_numbers l1, l2

l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))
expected = ListNode.new(7, ListNode.new(0, ListNode.new(8)))
actual = add_two_numbers(l1, l2)
p expected, actual

l1 = ListNode.new(0)
l2 = ListNode.new(0)
expected = ListNode.new(0)
actual = add_two_numbers(l1, l2)
p expected, actual

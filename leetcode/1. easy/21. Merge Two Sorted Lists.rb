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
def merge_two_lists(l1, l2)
  return nil if l1.nil? and l2.nil?  first = ListNode.new
  res = first
  loop do
    if l1.nil?
      res.next = ListNode.new(l2.val)
      l2 = l2.next
    elsif l2.nil?
      res.next = ListNode.new(l1.val)
      l1 = l1.next
    else
      if l1.val < l2.val
        res.next = ListNode.new(l1.val)
        l1 = l1.next
      else
        res.next = ListNode.new(l2.val)
        l2 = l2.next
      end
    end
    res = res.next
    break if l1.nil? and l2.nil?
  end
  first.next
end

l1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
l2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))
expected = ListNode.new(1, ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(4))))))
actual = merge_two_lists(l1, l2)
# assert_equal(expected, merge_two_lists(l1, l2))

l1 = ListNode.new()
l2 = ListNode.new()
expected = ListNode.new()
actual = merge_two_lists(l1, l2)
# assert_equal(expected, merge_two_lists(l1, l2))

l1 = ListNode.new()
l2 = ListNode.new(0)
expected = ListNode.new(0)
actual = merge_two_lists(l1, l2)
# assert_equal(expected, merge_two_lists(l1, l2))
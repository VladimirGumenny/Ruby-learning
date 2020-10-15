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
def delete_duplicates(head)
  res = ListNode.new(head.val)
  res_head = res
  head = head.next
  begin
    unless res.val == head.val
      res.next = ListNode.new(head.val)
      res = res.next
    end
    head = head.next
  end until head.nil?
  res_head
end

# list = ListNode.new(1, ListNode.new(1, ListNode.new(2)))
# expected_list = ListNode.new(1, ListNode.new(2))
# actual_list = delete_duplicates(list)
# puts

list = ListNode.new(1, ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(3)))))
expected_list = ListNode.new(1, ListNode.new(2, ListNode.new(3)))
actual_list = delete_duplicates(list)
puts


=begin
Input: 1->1->2
Output: 1->2

Input: 1->1->2->3->3
Output: 1->2->3
=end
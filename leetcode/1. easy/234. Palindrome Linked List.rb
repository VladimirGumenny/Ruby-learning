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
# @return {Boolean}
def is_palindrome(head)
  a = []
  loop do
    break if head.nil?
    a << head.val
    head = head.next
  end
  a == a.reverse
end

# Example 1:
# Input: 1->2
# Output: false

# Example 2:
# Input: 1->2->2->1
# Output: true
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

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  passed = []
  current = head
  loop do
    break if current.nil?
    return true if passed.include? current
    passed << current
    current = current.next
  end
  false
end
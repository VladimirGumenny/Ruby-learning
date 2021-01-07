require "test/unit/assertions"
include Test::Unit::Assertions

class MyStack

=begin
    Initialize your data structure here.
=end
  def initialize
    @stack = []
  end


=begin
    Push element x onto stack.
    :type x: Integer
    :rtype: Void
=end
  def push(x)
    @stack << x
  end


=begin
    Removes the element on top of the stack and returns that element.
    :rtype: Integer
=end
  def pop
    @stack.pop
  end


=begin
    Get the top element.
    :rtype: Integer
=end
  def top
    @stack.last
  end


=begin
    Returns whether the stack is empty.
    :rtype: Boolean
=end
  def empty
    @stack.empty?
  end


end

# Input
ops = %w[MyStack push push top pop empty]
stack = [[], [1], [2], [], [], []]
# Output
expected = [null, null, null, 2, 2, false]

# Explanation
myStack = MyStack.new;
myStack.push(1);
myStack.push(2);
myStack.top(); # return 2
myStack.pop(); # return 2
myStack.empty(); # return False

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
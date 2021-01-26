require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  res = []
  return [''] if n.zero?

  (0...n).each do |c|
    generate_parenthesis(c).each do |left|
      generate_parenthesis(n - 1 - c).each do |right|
        res << "(#{left})#{right}"
      end
    end
  end
  res
end

# Example 1:
n = 3
expected = ["((()))", "(()())", "(())()", "()(())", "()()()"]
# assert_equal(expected, generate_parenthesis(n))
p generate_parenthesis(n)

# Example 2:
n = 1
expected = ["()"]
assert_equal(expected, generate_parenthesis(n))

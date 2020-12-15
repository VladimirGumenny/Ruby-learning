require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  passed = [n]
  loop do
    n = n.to_s.chars.map { |c| c.to_i ** 2 }.reduce(:+)
    return true if n == 1

    return false if passed.include?(n)

    passed << n
  end
end

# Example 1:
n = 19
expected = true
assert_equal(expected, is_happy(n))

# Example 2:
n = 2
expected = false
assert_equal(expected, is_happy(n))

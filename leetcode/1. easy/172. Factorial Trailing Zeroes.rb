require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  res = 0
  i = 5
  loop do
    return res if n / i == 0
    res += n / i
    i *= 5
  end
end

# Example 2:
n = 5
expected = 1
# Explanation: 5! = 120, one trailing zero.
assert_equal expected, trailing_zeroes(n)

# Example 1:
n = 3
expected = 0
# Explanation: 3! = 6, no trailing zero.
assert_equal expected, trailing_zeroes(n)

# Example 3:
n = 0
expected = 0
assert_equal expected, trailing_zeroes(n)

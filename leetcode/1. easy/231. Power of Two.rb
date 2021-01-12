require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n.negative?
  (n & (n-1)).zero?
  # n.to_s(2).count('1') == 1
end

# Example 1:
n = 1
expected = true
# Explanation: 2**0 = 1
assert_equal(expected, is_power_of_two(n))

# Example 2:
n = 16
expected = true
# Explanation: 2**4 = 16
assert_equal(expected, is_power_of_two(n))

# Example 3:
n = 3
expected = false
assert_equal(expected, is_power_of_two(n))

# Example 4:
n = 4
expected = true
assert_equal(expected, is_power_of_two(n))

# Example 5:
n = 5
expected = false
assert_equal(expected, is_power_of_two(n))

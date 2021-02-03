require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  return false if n <= 0

  while n % 4 == 0 do
    n = n/4
  end

  n == 1

  # pow = Math.log(n, 4)
  # n == 4 ** pow.to_i
end

n = 0
expected = false
assert_equal(expected, is_power_of_four(n))

# Example 1:
n = 16
expected = true
assert_equal(expected, is_power_of_four(n))

# Example 2:
n = 5
expected = false
assert_equal(expected, is_power_of_four(n))

# Example 3:
n = 1
expected = true
assert_equal(expected, is_power_of_four(n))

require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  return true if num == 1

  n = num / 2
  loop do
    return true if n * n == num
    k = (n + num / n) / 2
    return false if k >= n
    n = k
  end
end

num = 195
expected = false
assert_equal(expected, is_perfect_square(num))

# Example 1:
num = 16
expected = true
assert_equal(expected, is_perfect_square(num))

# Example 2:
num = 14
expected = false
assert_equal(expected, is_perfect_square(num))

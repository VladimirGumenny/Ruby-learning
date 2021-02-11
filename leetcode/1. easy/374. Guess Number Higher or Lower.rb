require "test/unit/assertions"
include Test::Unit::Assertions

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
def guess(num)
  return -1 if @pick < num
  return 0 if @pick == num
  return 1 if @pick > num
end

def guessNumber(n)
  l = 1
  r = n
  loop do
    g = l + (r - l) / 2
    case guess(g)
    when 0
      return g
    when -1
      r = g - 1
    when 1
      l = g + 1
    end
  end
end

# Example 1:
n = 10
@pick = 6
expected = 6
assert_equal(expected, guessNumber(n))

# Example 2:
n = 1
@pick = 1
expected = 1
assert_equal(expected, guessNumber(n))

# Example 3:
n = 2
@pick = 1
expected = 1
assert_equal(expected, guessNumber(n))

# Example 4:
n = 2
@pick = 2
expected = 2
assert_equal(expected, guessNumber(n))

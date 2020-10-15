require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?
  return true if x.zero?
  a = []
  while x > 0
    a << x % 10
    x = x / 10
  end
  a == a.reverse
  # (1..a.size / 2).each { |idx| return false unless a[idx] == a[a.size - idx - 1] }
  # true
end

assert_equal true , is_palindrome(121)
assert_equal false , is_palindrome(-121)
assert_equal false , is_palindrome(10)
assert_equal false , is_palindrome(-101)
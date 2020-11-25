require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[^a-z0-9]/, '')
  s == s.reverse
end

s = "0P"
expected = false
p is_palindrome s

# Example 1:
s = "A man, a plan, a canal: Panama"
expected = true
assert_equal(expected, is_palindrome(s))

# Example 2:
s = "race a car"
expected = false
assert_equal(expected, is_palindrome(s))

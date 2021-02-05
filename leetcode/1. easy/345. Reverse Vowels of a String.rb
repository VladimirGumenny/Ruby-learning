require "test/unit/assertions"
include Test::Unit::Assertions

VOWELS = 'aeiuoAEIUO'

# @param {String} s
# @return {String}
def reverse_vowels(s)
  a = []
  s.chars.each_with_index do |c, i|
    if VOWELS.include?(c)
      a << i
    end
  end
  l = a.size
  (0...l / 2).each do |i|
    s[a[i]], s[a[l - 1 -i]] = s[a[l - 1 -i]], s[a[i]]
  end
  s
end

s = ".,"
expected = s
assert_equal(expected, reverse_vowels(s))

# Example 1:
s = "hello"
expected = "holle"
assert_equal(expected, reverse_vowels(s))

# Example 2:
s = "leetcode"
expected = "leotcede"
assert_equal(expected, reverse_vowels(s))

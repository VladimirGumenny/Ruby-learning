require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  hs = Hash.new(0)
  s.chars.each { |c| hs[c] += 1 }
  ht = Hash.new(0)
  t.chars.each { |c| ht[c] += 1 }
  ht.each do |c, i|
    next if hs.has_key?(c) && hs[c] == ht[c]
    return c
  end
end

# Example 1:
s = "abcd"
t = "abcde"
expected = "e"
# Explanation: 'e' is the letter that was added.
assert_equal(expected, find_the_difference(s, t))

# Example 2:
s = ""
t = "y"
expected = "y"
assert_equal(expected, find_the_difference(s, t))

# Example 3:
s = "a"
t = "aa"
expected = "a"
assert_equal(expected, find_the_difference(s, t))

# Example 4:
s = "ae"
t = "aea"
expected = "a"
assert_equal(expected, find_the_difference(s, t))

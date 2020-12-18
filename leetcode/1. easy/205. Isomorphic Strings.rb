require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  h = {}
  s.chars.each_with_index do |c, i|
    if h.has_key?(c)
      return false unless h[c] == t[i]
    else
      return false if h.has_value?(t[i]) && c != h[t[i]]
      h[c] = t[i]
    end
  end
  true
end

p is_isomorphic('ab', 'aa')

# Example 1:
s = "egg"
t = "add"
expected = true
assert_equal(expected, is_isomorphic(s, t))

# Example 2:
s = "foo"
t = "bar"
expected = false
assert_equal(expected, is_isomorphic(s, t))

# Example 3:
s = "paper"
t = "title"
expected = true
assert_equal(expected, is_isomorphic(s, t))

require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  s.chars.sort == t.chars.sort
end

s = "anagram"
t = "nagaram"
assert_equal(true, is_anagram(s, t))

s = "rat"
t = "car"
assert_equal(false, is_anagram(s, t))

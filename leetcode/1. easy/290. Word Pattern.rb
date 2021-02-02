require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  map = {}
  words = s.split
  return false unless words.size == pattern.size

  pattern.chars.each_with_index do |char, i|
    if map.key? char
      return false unless map[char] == words[i]
    else
      return false if map.has_value?(words[i])
      map[char] = words[i]
    end
  end
  true
end

# Example 1:
pattern = "abba"
s = "dog cat cat dog"
expected = true
assert_equal(expected, word_pattern(pattern, s))

# Example 2:
pattern = "abba"
s = "dog cat cat fish"
expected = false
assert_equal(expected, word_pattern(pattern, s))

# Example 3:
pattern = "aaaa"
s = "dog cat cat dog"
expected = false
assert_equal(expected, word_pattern(pattern, s))

# Example 4:
pattern = "abba"
s = "dog dog dog dog"
expected = false
assert_equal(expected, word_pattern(pattern, s))

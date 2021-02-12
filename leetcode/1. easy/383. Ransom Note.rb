require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  h = Hash.new(0)
  magazine.chars.each { |char| h[char] += 1 }

  ransom_note.chars.each do |char|
    return false unless h.has_key? char
    h[char] -= 1
    return false if h[char].negative?
  end
  true
end

# Example 1:
ransom_note = "a"
magazine = "b"
expected = false
assert_equal(expected, can_construct(ransom_note, magazine))

# Example 2:
ransom_note = "aa"
magazine = "ab"
expected = false
assert_equal(expected, can_construct(ransom_note, magazine))

# Example 3:
ransom_note = "aa"
magazine = "aab"
expected = true
assert_equal(expected, can_construct(ransom_note, magazine))
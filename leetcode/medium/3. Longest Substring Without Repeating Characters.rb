require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  l = 0
  hash = {}
  i = 0
  j = 0
  s.chars.each do |c|
    if hash.has_key?(c)
      i = hash[c] if hash[c] > i
    end
    l = [j - i + 1, l].max
    hash[c] = j + 1
    j += 1
  end
  l
end

assert_equal(2, length_of_longest_substring('abba'), "0")
assert_equal(3, length_of_longest_substring('dvdf'), "1")
assert_equal(3, length_of_longest_substring('abcabcbb'), "2")
assert_equal(1, length_of_longest_substring('bbbbb'), "3")
assert_equal(3, length_of_longest_substring('pwwkew'), "4")
assert_equal(0, length_of_longest_substring(''), "5")
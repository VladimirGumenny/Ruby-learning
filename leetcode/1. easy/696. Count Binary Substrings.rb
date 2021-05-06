require "test/unit/assertions"
include Test::Unit::Assertions

def expand(s, mid)
  left = mid - 1
  right = mid
  ch_left = s[left]
  ch_right = s[right]
  while s[left] == ch_left and s[right] == ch_right and left >= 0 and right < s.size
    @count += 1
    left -= 1
    right += 1
  end
end

# @param {String} s
# @return {Integer}
def count_binary_substrings(s)
  return 0 if s.nil? or s.size < 2

  @count = 0
  (1...s.length).each do |i|
    if s[i - 1] != s[i]
      expand(s, i)
    end
  end
  @count
end

s = "00110011"
expected = 6
assert_equal(expected, count_binary_substrings(s))
# Explanation: There are 6 substrings that have equal number of consecutive 1's and 0's: "0011", "01", "1100", "10", "0011", and "01".
# Notice that some of these substrings repeat and are counted the number of times they occur.
# Also, "00110011" is not a valid substring because all the 0's (and 1's) are not grouped together.

s = "10101"
expected = 4
assert_equal(expected, count_binary_substrings(s))
# Explanation: There are 4 substrings: "10", "01", "10", "01" that have equal number of consecutive 1's and 0's.
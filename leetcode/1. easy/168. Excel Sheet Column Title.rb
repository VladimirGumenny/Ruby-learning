require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {String}
def convert_to_title(n)
  n.zero? ? '' : convert_to_title((n - 1) / 26) + ((n - 1) % 26 + 'A'.ord).chr




  # letters = 26
  # # letters = 3
  # rest = n - 1
  # beginning = 0
  # p = 1
  # loop do
  #   break if rest < letters ** p
  #
  #   rest -= letters ** p
  #   p += 1
  # end
  # first_letter = rest / letters ** (p - 1)
  # first_letter = "#{(first_letter + 'A'.ord).chr}"
  # title = first_letter
  # if p > 1
  #   tail = "#{convert_to_title(rest % letters ** (p - 1) + 1)}"
  #   if tail.size < p - 1
  #     tail = 'A' * (p - 1 - tail.size) + tail
  #   end
  #   title += tail
  # end
  # title
end

# # Example -1:
# n = 1
# expected = "A"
# assert_equal(expected, convert_to_title(n))
#
# # Example -2:
# n = 9
# expected = "BC"
# assert_equal(expected, convert_to_title(n))
#
# # Example -3:
# n = 14
# expected = "AAB"
# assert_equal(expected, convert_to_title(n))


# Example 1:
n = 1
expected = "A"
assert_equal(expected, convert_to_title(n))

# Example 2:
n = 28
expected = "AB"
assert_equal(expected, convert_to_title(n))

# Example 3:
n = 701
expected = "ZY"
assert_equal(expected, convert_to_title(n))

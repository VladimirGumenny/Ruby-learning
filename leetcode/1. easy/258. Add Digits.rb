require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} num
# @return {Integer}
def add_digits(num)
  loop do
    num = num.digits.reduce(:+)
    break if num < 10
  end
  num
end

num = 38
expected = 2
# Explanation: The process is like: 3 + 8 = 11, 1 + 1 = 2.
#   Since 2 has only one digit, return it.
actual = add_digits(num)
assert_equal(expected, actual)
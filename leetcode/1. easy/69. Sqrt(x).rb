require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  Math.sqrt(x).floor
end

x = 4
expected = 2
assert_equal(expected, my_sqrt(x))

x = 8
expected = 2
assert_equal(expected, my_sqrt(x))
# Explanation: The square root of 8 is 2.82842..., and since
# the decimal part is truncated, 2 is returned.
require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} x
# @return {Integer}
def reverse(x)
  sign = x >= 0 ? 1 : -1
  x = x.abs.to_s.reverse.to_i * sign
  x.between?(-2 ** 31, 2**31 - 1) ? x : 0
end

assert_equal 321, reverse(123)
assert_equal -321, reverse(-123)
assert_equal 21, reverse(120)
assert_equal 0, reverse(0)
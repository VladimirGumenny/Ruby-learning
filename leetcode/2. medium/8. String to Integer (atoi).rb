require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @return {Integer}
def my_atoi(s)
  start = 0
  while start < s.size
    break unless s[start] == ' '
    start += 1
  end
  return 0 if start == s.size

  sign = 1
  if s[start] == '-'
    sign = -1
    start += 1
  elsif s[start] == '+'
    start += 1
  end

  r = 0
  i = start
  c0 = '0'.ord
  while i < s.size
    c = s[i]
    break unless c =~ /\d+/
    r = r * 10 + c.ord - c0
    i += 1
  end

  r *= sign
  int_min = -2**31
  int_max = -int_min - 1
  r = int_max if r > int_max
  r = int_min if r < int_min

  r
end

assert_equal(1, my_atoi('1'))
assert_equal(-2147483648, my_atoi('-91283472332'))
assert_equal(42, my_atoi('42'))
assert_equal(-42, my_atoi('   -42'))
assert_equal(4193, my_atoi('4193 with words'))
assert_equal(0, my_atoi('words and 987'))

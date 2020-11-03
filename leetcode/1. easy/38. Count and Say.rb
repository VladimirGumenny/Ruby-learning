require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {String}
def count_and_say(n)
  return '1' if n == 1

  prev = count_and_say(n - 1)
  c_prev = prev[0]
  qnt = 0
  res = ''
  prev.chars.each do |c|
    if c == c_prev
      qnt += 1
    else
      res += "#{qnt}#{c_prev}"
      qnt = 1
      c_prev = c
    end
  end
  res += "#{qnt}#{c_prev}" unless qnt == 0
  res
end

# Example 1:
n = 1
expected = "1"
assert_equal(expected, count_and_say(n))
# Explanation: This is the base case.

# Example 2:
n = 4
expected = "1211"
assert_equal(expected, count_and_say(n))
# Explanation:
# countAndSay(1) = "1"
# countAndSay(2) = say "1" = one 1 = "11"
# countAndSay(3) = say "11" = two 1's = "21"
# countAndSay(4) = say "21" = one 2 + one 1 = "12" + "11" = "1211"
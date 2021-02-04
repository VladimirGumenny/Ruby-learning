require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  l = s.size
  (0...l / 2).each do |i|
    s[i], s[l - i - 1] = s[l - i - 1], s[i]
  end
  s
end

s =        ["A"," ","m","a","n",","," ","a"," ","p","l","a","n",","," ","a"," ","c","a","n","a","l",":"," ","P","a","n","a","m","a"]
expected = ["a","m","a","n","a","P"," ",":","l","a","n","a","c"," ","a"," ",",","n","a","l","p"," ","a"," ",",","n","a","m"," ","A"]
assert_equal(expected, reverse_string(s))

# Example 1:
s = ["h","e","l","l","o"]
expected = ["o","l","l","e","h"]
assert_equal(expected, reverse_string(s))

# Example 2:
s = ["H","a","n","n","a","h"]
expected = ["h","a","n","n","a","H"]
assert_equal(expected, reverse_string(s))

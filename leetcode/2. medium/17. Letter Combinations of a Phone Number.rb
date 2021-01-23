require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?

  h = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz'
  }
  res = h[digits[0]].chars
  (1...digits.size).each do |idx|
    digit_letters = h[digits[idx]].chars
    res = res.product(digit_letters).map { |l1, l2| l1 + l2 }
  end
  res
end

digits = '23'
expected = ['ad', 'ae', 'af', 'bd', 'be', 'bf', 'cd', 'ce', 'cf']
assert_equal(expected, letter_combinations(digits))

digits = ""
expected = []
assert_equal(expected, letter_combinations(digits))

digits = "2"
expected = ["a", "b", "c"]
assert_equal(expected, letter_combinations(digits))

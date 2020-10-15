require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  hash = {
      'CM' => 900,
      'M' => 1000,
      'CD' => 400,
      'D' => 500,
      'XC' => 90,
      'C' => 100,
      'XL' => 40,
      'L' => 50,
      'IX' => 9,
      'X' => 10,
      'IV' => 4,
      'V' => 5,
      'I' => 1
  }
  i = 0
  hash.keys.each do |r|
    i += hash[r] * s.scan(r).size
    s.gsub!(r, '')
  end
  i
end

assert_equal(3, roman_to_int('III'))
assert_equal(4, roman_to_int('IV'))
assert_equal(9, roman_to_int('IX'))
assert_equal(58, roman_to_int('LVIII'))
assert_equal(1994, roman_to_int('MCMXCIV'))

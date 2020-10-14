require "test/unit/assertions"
include Test::Unit::Assertions

ROMANS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I',
}

# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman = ''
  ROMANS.keys.each do |i|
    loop do
      break if i > num
      num -= i
      roman << ROMANS[i]
    end
    break if num.zero?
  end
  roman
end

assert_equal('MCMXCIV', int_to_roman(1994))
assert_equal('III', int_to_roman(3))
assert_equal('IV', int_to_roman(4))
assert_equal('IX', int_to_roman(9))
assert_equal('LVIII', int_to_roman(58))

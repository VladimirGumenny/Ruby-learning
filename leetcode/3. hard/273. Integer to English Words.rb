require "test/unit/assertions"
include Test::Unit::Assertions

SCALES = {
    1000000000 => 'Billion',
    1000000 => "Million",
    1000 => "Thousand"
}

NUMBERS = {
    100 => "Hundred",
    90 => "Ninety",
    80 => "Eighty",
    70 => "Seventy",
    60 => "Sixty",
    50 => "Fifty",
    40 => "Forty",
    30 => "Thirty",
    20 => "Twenty",
    19 => "Nineteen",
    18 => "Eighteen",
    17 => "Seventeen",
    16 => "Sixteen",
    15 => "Fifteen",
    14 => "Fourteen",
    13 => "Thirteen",
    12 => "Twelve",
    11 => "Eleven",
    10 => "Ten",
    9 => "Nine",
    8 => "Eight",
    7 => "Seven",
    6 => "Six",
    5 => "Five",
    4 => "Four",
    3 => "Three",
    2 => "Two",
    1 => "One"
}

def small_num_to_words(num)
  str = ''
  NUMBERS.each do |step, word|
    next if num < step
    if step == 100
      str = NUMBERS[num / 100] + " #{word}"
      num %= 100
      str += ' ' + small_num_to_words(num) if num > 0
      return str
    else
      str += " #{word}"
      num -= step
    end
    return str.strip if num == 0
  end
end

# @param {Integer} num
# @return {String}
def number_to_words(num)
  return 'Zero' if num.zero?
  str = ''
  SCALES.each do |scale, word|
    if num >= scale
      b = small_num_to_words(num / scale) + " #{word}"
      num %= scale
      str += b
      str += ' ' if num > 0
    end
  end
  str += small_num_to_words(num) if num > 0
  str
end

assert_equal('One Thousand', number_to_words(1000))
assert_equal('One Hundred Twenty Three', number_to_words(123))
assert_equal('Twelve Thousand Three Hundred Forty Five', number_to_words(12_345))
assert_equal('One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven', number_to_words(1_234_567))
assert_equal('One Billion Two Hundred Thirty Four Million Five Hundred Sixty Seven Thousand Eight Hundred Ninety One', number_to_words(1_234_567_891))
require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String[]} words
# @param {String} s
# @return {String}
def bold_words(words, s)
  l = s.length
  is_bold = Array.new(l, false )
  (0...l).each do |right|
    words.each do |word|
      left = right + 1 - word.length
      next if left.negative?
      if s[left..right] == word
        (left..right).each { |i| is_bold[i] = true }
      end
    end
  end

  res = ''
  opened = false
  (0...l).each do |i|
    if is_bold[i]
      unless opened
        res << "<b>"
        opened = true
      end
    else
      if opened
        res << "</b>"
        opened = false
      end
    end
    res << s[i]
  end
  res << "</b>" if opened
  res
end

words = ["ab", "bc"]
s = "aabcd"
expected = "a<b>abc</b>d"
assert_equal(expected, bold_words(words, s))

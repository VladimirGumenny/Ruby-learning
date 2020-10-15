require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?
  prefix = strs.first
  strs[1..-1].each do |str|
    return '' if str == ''
    i = 0
    while i < prefix.size && i < str.size
      if prefix[i] == str[i]
        i += 1
      else
        return '' if i.zero?
        break
      end
    end
    prefix = prefix[0..i - 1] if i < prefix.size
  end
  prefix
end

# assert_equal('', longest_common_prefix(['abab', "aba", ""]))
assert_equal('fl', longest_common_prefix(["flower", 'flow', "flight"]))
assert_equal('', longest_common_prefix(["dog", 'racecar', "car"]))
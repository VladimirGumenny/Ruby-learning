require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  h = Hash.new([])
  strs.each do |s|
    h[s.chars.sort] = h[s.chars.sort] + [s]
  end
  h.values
end

# assert_equal([["bat"],["nat","tan"],["ate","eat","tea"]], group_anagrams(["eat","tea","tan","ate","nat","bat"]))
assert_equal([[""]], group_anagrams([""]))
assert_equal([["a"]], group_anagrams(["a"]))
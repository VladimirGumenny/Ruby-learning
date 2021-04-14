require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
  words.map { |word| [word, words.count(word)] }.uniq.sort_by { |w| w[0] }.sort_by { |w| -w[1] }[0...k].map(&:first)
end
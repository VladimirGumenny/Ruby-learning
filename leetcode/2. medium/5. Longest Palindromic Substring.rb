require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @return {String}
def longest_palindrome(s)
  return '' if s.empty?
  longest = s[0]
  (0..s.size).each do |i|
    catch :next_char do
      j = 1
      while i + j < s.size && i - j + 1 >= 0
        odd = s[i - j + 1..i + j]
        even = s[i - j + 1..i + j + 1]
        if even == even.reverse
          longest = even if even.size > longest.size
          j += 1
        elsif odd == odd.reverse
          longest = odd if odd.size > longest.size
          j += 1
        else
          throw :next_char
        end
      end
    end
  end
  longest
end

assert_equal "ccc", longest_palindrome("ccc")
assert_equal "bb", longest_palindrome("cbbd")
assert_equal "bbdbb", longest_palindrome("cbbdbb")
assert_include ["bab", "aba"], longest_palindrome("babad")
assert_equal "a", longest_palindrome("a")
assert_equal "", longest_palindrome("")

extra_long = "lcnvoknqgejxbfhijmxglisfzjwbtvhodwummdqeggzfczmetrdnoetmcydwddmtubcqmdjwnpzdqcdhplxtezctvgnpobnnscrmeqkwgiedhzsvskrxwfyklynkplbgefjbyhlgmkkfpwngdkvwmbdskvagkcfsidrdgwgmnqjtdbtltzwxaokrvbxqqqhljszmefsyewwggylpugmdmemvcnlugipqdjnriythsanfdxpvbatsnatmlusspqizgknabhnqayeuzflkuysqyhfxojhfponsndytvjpbzlbfzjhmwoxcbwvhnvnzwmkhjxvuszgtqhctbqsxnasnhrusodeqmzrlcsrafghbqjpyklaaqximcjmpsxpzbyxqvpexytrhwhmrkuybtvqhwxdqhsnbecpfiudaqpzsvfaywvkhargputojdxonvlprzwvrjlmvqmrlftzbytqdusgeupuofhgonqoyffhmartpcbgybshllnjaapaixdbbljvjomdrrgfeqhwffcknmcqbhvulwiwmsxntropqzefwboozphjectnudtvzzlcmeruszqxvjgikcpfclnrayokxsqxpicfkvaerljmxchwcmxhtbwitsexfqowsflgzzeynuzhtzdaixhjtnielbablmckqzcccalpuyahwowqpcskjencokprybrpmpdnswslpunohafvminfolekdleusuaeiatdqsoatputmymqvxjqpikumgmxaxidlrlfmrhpkzmnxjtvdnopcgsiedvtfkltvplfcfflmwyqffktsmpezbxlnjegdlrcubwqvhxdammpkwkycrqtegepyxtohspeasrdtinjhbesilsvffnzznltsspjwuogdyzvanalohmzrywdwqqcukjceothydlgtocukc"
p "size: #{extra_long.size}"
p longest_palindrome(extra_long)


def old_solution(s)
  return '' if s.empty?
  longest = s[0]
  (0...s.size).each do |i|
    (i + 1...s.size).each do |j|
      if s[i..j] == s[i..j].reverse
        longest = s[i..j] if s[i..j].size > longest.size
      end
    end
  end
  longest
end
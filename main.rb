def space_message(str)
  loop do
    idx = 0
    start = 0
    str.chars.each do |c|
      case c
      when '['
        inside = true
        start = idx
      when ']'
        s = str[start..idx]
        str.gsub!(s, (s.scan(/[[:alpha:]]/).join) * s[1...-1].to_i)
        break
      end
      idx += 1
    end
    return str unless str.include? '['
  end
end

p space_message("IF[2E]LG[5O]D") == "IFEELGOOOOOD"
p space_message(space_message("AB[2C[2EF]G]")) == "ABCEFEFGCEFEFG"
p space_message("AB[3CD]") == "ABCDCDCD"
p space_message("ABCD") == "ABCD"
# "AB" = "AB"
# "[3CD]" = "CDCDCD"
p space_message("IF[2E]LG[5O]D") == "IFEELGOOOOOD"

def to_star_shorthand(str)
  prev = str[0]
  cnt = 1
  res = ''
  char = ''
  (1...str.size).each do |i|
    char = str[i]
    if char == prev
      cnt += 1
    else
      if cnt == 1
        res << prev
      else
        res << "#{prev}*#{cnt}"
        cnt = 1
      end
      prev = char
    end
  end

  if cnt == 1
    res << char
  else
    res << "#{char}*#{cnt}"
  end
end

p to_star_shorthand("abbccc") == "ab*2c*3"
p to_star_shorthand("77777geff") == "7*5gef*2"
p to_star_shorthand("abc") == "abc"
p to_star_shorthand("") == ""
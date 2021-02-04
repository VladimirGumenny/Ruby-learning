def best_friend(str, a, b)
  str.chars.each_with_index do |char, idx|
    next unless char == a
    return false unless str[idx + 1] && str[idx + 1] == b
  end
  true
end

p best_friend('go to edabit  and meditate','e', 'd') == false
p best_friend('he headed to the store', 'h', 'e') == true
p best_friend('i found an ounce with my hound', 'o', 'u') == true
p best_friend('we found your dynamite', 'd', 'y') == false
def first_n_vowels(s, n)
  vowels = s.scan(/[aeiouAEIUO]/)
  vowels.size < n ? 'invalid' : vowels[0...n].join
end

p first_n_vowels("sharpening skills", 3) == "aei"
p first_n_vowels("major league", 5) == "aoeau"
p first_n_vowels("hostess", 5) == "invalid"
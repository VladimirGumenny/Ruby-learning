def club_entry(word)
  word.chars.each_cons(2) do |couple|
    next unless couple.first == couple.last
    return (couple.first.ord - 'a'.ord + 1) *  4
  end
end

p club_entry("lettuce") == 80
p club_entry("hill") == 48
# 'l' is 12th alphabet
# 12*4 = 48
p club_entry("apple") == 64
p club_entry("bee") == 20
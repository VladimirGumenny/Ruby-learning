def wave(str)
  res = []
  (0...str.size).each do |idx|
    next if str[idx] == ' '
    s = str.dup
    s[idx] = s[idx].upcase
    res << s
  end
  res
end

p wave("edabit") == ["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]
p wave("just do it") == ["Just do it", "jUst do it", "juSt do it", "jusT do it", "just Do it", "just dO it", "just do It", "just do iT"]
p wave(" ") == []
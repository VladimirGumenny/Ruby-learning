def add_letters(a)
  s = a.map { |c| c.ord - 'a'.ord + 1 }.reduce(0, :+) % 26
  s = 26 if s.zero?
  (s + 'a'.ord - 1).chr
end

p add_letters([]) == "z"
p add_letters(["y", "a"]) == "z"
puts add_letters(["a", "b"]) == "c"
p add_letters(["y", "c"]) == "b"


# puts "** here is result : #{res} **"

"707".tr('1234567890', 'IZEHSGLB-O')
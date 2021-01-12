def caesar_cipher(text, key)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  text.chars.map do |c|
    (alphabet.include? c) ? alphabet[(alphabet.index(c) + key) % alphabet.size] : c
  end.join
end

p caesar_cipher("hello", 5) == "mjqqt"
p caesar_cipher("hello world", 1) == "ifmmp xpsme"
p caesar_cipher("a", 2) == "c"
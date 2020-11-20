def jay_and_bob(str)
  map = {'half' => 14, 'quarter' => '7', 'eighth' => '3.5', 'sixteenth' => '1.75'}
  "#{map[str]} grams"
end

p jay_and_bob("half") == "14 grams"
p jay_and_bob("quarter") == "7 grams"
p jay_and_bob("eighth") == "3.5 grams"
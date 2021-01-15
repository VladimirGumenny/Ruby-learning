class String
  def consonants
    self.size - self.vowels
  end

  def vowels
    self.count('aeiou')
  end
end

p "hello".consonants == 3
p "hello".vowels == 2

p "greatly".consonants == 5
p "greatly".vowels == 2

p "Smithsonian".consonants == 7
p "Smithsonian".vowels == 4
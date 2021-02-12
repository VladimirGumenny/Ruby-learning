def mapping(letters)
  letters.inject({}) do |h, char|
    h[char] = char.upcase
    h
  end


  # h = {}
  # letters.each do |char|
  #   h[char] = char.upcase
  # end
  # h
end

p mapping(["p", "s"]) == { "p" => "P", "s" => "S" }
p mapping(["a", "b", "c"]) == { "a" => "A", "b" => "B", "c" => "C" }
p mapping(["a", "v", "y", "z"]) == { "a" => "A", "v" => "V", "y" => "Y", "z" => "Z" }
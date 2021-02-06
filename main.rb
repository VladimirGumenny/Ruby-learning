def missing_letter(arr)
  (arr[0].upto(arr[-1]).to_a - arr).first
end

p missing_letter(["a", "b", "c", "e", "f", "g"]) == "d"
p missing_letter(["O", "Q", "R", "S"]) == "P"
p missing_letter(["t", "u", "v", "w", "x", "z"]) == "y"
p missing_letter(["m", "o"]) == "n"
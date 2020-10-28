def get_diagonals(arr)
  d1 = []
  d2 = []
  arr.each_with_index do |a, row|
    d1 << a[row]
    d2 << a[a.size - 1 - row]
  end
  [d1, d2]
end


p get_diagonals([ [1, 2], [3, 4] ]) == [ [1, 4], [2, 3] ]
p get_diagonals([ ["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"] ]) == [ ["a", "e", "i"], ["c", "e", "g"] ]
p get_diagonals([ [true] ]) == [ [true], [true] ]
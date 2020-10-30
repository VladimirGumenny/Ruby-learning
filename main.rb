def chunkify(arr, size)
  arr.each_slice(size).to_a
end


p chunkify([2, 3, 4, 5], 2) == [[2, 3], [4, 5]]
p chunkify([2, 3, 4, 5, 6], 2) == [[2, 3], [4, 5], [6]]
p chunkify([2, 3, 4, 5, 6, 7], 3) == [[2, 3, 4], [5, 6, 7]]
p chunkify([2, 3, 4, 5, 6, 7], 1) == [[2], [3], [4], [5], [6], [7]]
p chunkify([2, 3, 4, 5, 6, 7], 7) == [[2, 3, 4, 5, 6, 7]]
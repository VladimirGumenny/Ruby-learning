def is_orthogonal(first, second)
  # first.each_with_index.reduce(0) { |sum, (f, idx)| sum + f * second[idx] }.zero?
  (0...first.size).reduce(0) { |sum, idx| sum + first[idx] * second[idx] }.zero?
end

p is_orthogonal([1, 2], [2, -1]) == true

p is_orthogonal([3, -1], [7, 5]) == false

p is_orthogonal([1, 2, 0], [2, -1, 10]) == true

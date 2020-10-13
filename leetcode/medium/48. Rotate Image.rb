require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  steps = matrix.size / 2
  (0...steps).each do |step|
    (step...matrix.size - 1 - step).each do |cell|
      lu = matrix[step][cell]
      matrix[step][cell] = matrix[matrix.size - 1 - cell][step]
      matrix[matrix.size - 1 - cell][step] = matrix[matrix.size - 1 - step][matrix.size - 1 - cell]
      matrix[matrix.size - 1 - step][matrix.size - 1 - cell] = matrix[cell][matrix.size - 1 - step]
      matrix[cell][matrix.size - 1 - step] = lu
    end
  end
  matrix
end

matrix = [[1, 2], [3, 4]]
expected = [[3, 1], [4, 2]]
assert_equal(expected, rotate(matrix))

matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
expected = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
assert_equal(expected, rotate(matrix))

matrix = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
expected = [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]
assert_equal(expected, rotate(matrix))

matrix = [[1]]
expected = [[1]]
assert_equal(expected, rotate(matrix))


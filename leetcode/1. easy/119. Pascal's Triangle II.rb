require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  return [1] if row_index.zero?

  res = [1]
  (1..row_index).each do |row|
    left = 1
    (1...row).each do |i|
      right = res[i]
      res[i] = left + right
      left = right
    end
    res[row] = 1
  end
  res
end

# Example 1:
row_index = 3
expected = [1, 3, 3, 1]
assert_equal(expected, get_row(row_index))

# Example 2:
row_index = 0
expected = [1]
assert_equal(expected, get_row(row_index))

# Example 3:
row_index = 1
expected = [1, 1]
assert_equal(expected, get_row(row_index))

require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows.zero?

  res = [[1]]
  return res if num_rows == 1

  (2..num_rows).each do |row_num|
    row = Array.new(1, 1)
    # row[0] = 1
    row[row_num - 1] = 1
    (2..row_num - 1).each do |cell_num|
      row[cell_num - 1] = res[row_num - 2][cell_num - 2] + res[row_num - 2][cell_num - 1]
    end
    res << row
  end
  res
end

num_rows = 5
expected = [
    [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
    [1, 4, 6, 4, 1]
]
assert_equal(expected, generate(num_rows))
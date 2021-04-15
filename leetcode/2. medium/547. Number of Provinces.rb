require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[][]} is_connected
# @param {Integer} row_idx
# @param {Integer} col_idx
def clear_connections(is_connected, row_idx)
  return if is_connected[row_idx, row_idx] == 0

  is_connected[row_idx].each_with_index do |connected, col_idx|
    if connected == 1
      is_connected[row_idx][col_idx] = 0
      is_connected[col_idx][row_idx] = 0
      clear_connections(is_connected, col_idx)
    end
  end
end

# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  @provinces = 0
  is_connected.each_with_index do |row, row_idx|
    if row[row_idx] == 1
      @provinces += 1
      clear_connections(is_connected, row_idx)
    end
  end
  @provinces
end

is_connected = [[1,1,0],[1,1,0],[0,0,1]]
expected = 2
assert_equal(expected, find_circle_num(is_connected))

is_connected = [[1,0,0],[0,1,0],[0,0,1]]
expected = 3
assert_equal(expected, find_circle_num(is_connected))

require "test/unit/assertions"
include Test::Unit::Assertions

def clear_island(grid, y, x)
  grid[y][x] = "0"
  clear_island(grid, y - 1, x) if y > 0 && grid[y - 1][x] == '1'
  clear_island(grid, y, x - 1) if x > 0 && grid[y][x - 1] == '1'
  clear_island(grid, y + 1, x) if (y < grid.size - 1) && (grid[y + 1][x] == '1')
  clear_island(grid, y, x + 1) if (x < grid.first.size - 1) && (grid[y][x + 1] == '1')
end

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  islands = 0
  grid.each_with_index do |row, y|
    row.each_with_index do |cell, x|
      next if cell == '0'
      islands += 1
      clear_island(grid, y, x)
    end
  end
  islands
end


# Example 1:

grid = [
    ["1","1","1","1","0"],
    ["1","1","0","1","0"],
    ["1","1","0","0","0"],
    ["0","0","0","0","0"]
]
expected = 1
assert_equal(expected, num_islands(grid))

# Example 2:

grid = [
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
]
expected = 3
assert_equal(expected, num_islands(grid))

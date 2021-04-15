require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} h
# @param {Integer} w
# @param {Integer[]} horizontal_cuts
# @param {Integer[]} vertical_cuts
# @return {Integer}
def max_area(h, w, horizontal_cuts, vertical_cuts)
  horizontal_cuts.sort!
  horizontal_cuts << h
  prev = 0
  max_h = 0
  horizontal_cuts.each do |current|
    max_h = [(current - prev), max_h].max
    prev = current
  end

  vertical_cuts.sort!
  vertical_cuts << w
  prev = 0
  max_w = 0
  vertical_cuts.each do |current|
    max_w = [(current - prev), max_w].max
    prev = current
  end

  (max_h * max_w) % 1_000_000_007
end

h = 5
w = 4
horizontal_cuts = [1,2,4]
vertical_cuts = [1,3]
expected = 4
assert_equal(expected, max_area(h, w, horizontal_cuts, vertical_cuts))

h = 5
w = 4
horizontal_cuts = [3,1]
vertical_cuts = [1]
expected = 6
assert_equal(expected, max_area(h, w, horizontal_cuts, vertical_cuts))

h = 5
w = 4
horizontal_cuts = [3]
vertical_cuts = [3]
expected = 9
assert_equal(expected, max_area(h, w, horizontal_cuts, vertical_cuts))

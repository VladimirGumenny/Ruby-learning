require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} time
# @return {Integer}
def num_pairs_divisible_by60(time)
  r = Array.new(60, 0)
  counter = 0
  time.each do |t|
    if t % 60 == 0
      counter += r[0]
    else
      counter += r[60 - t % 60]
    end
    r[t % 60] += 1
  end
  counter
end

time = [30,20,150,100,40]
expected = 3
assert_equal(expected, num_pairs_divisible_by60(time))

time = [60,60,60]
expected = 3
assert_equal(expected, num_pairs_divisible_by60(time))

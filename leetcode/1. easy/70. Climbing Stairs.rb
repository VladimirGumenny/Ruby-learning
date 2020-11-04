require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n == 1 || n == 2
  steps = [0, 1, 2]
  (3..n).each { |i| steps[i] = steps[i - 1] + steps[i - 2] }
  steps[n]
end

n = 2
expected = 2
assert_equal(expected, climb_stairs(n))
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps

n = 3
expected = 3
assert_equal(expected, climb_stairs(n))
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step
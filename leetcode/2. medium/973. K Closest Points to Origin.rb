require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  points.map do |p|
    [p[0] * p[0] + p[1] * p[1], p]
  end.sort[0..k-1].map{ |a| a.last }
end

points = [[0,1],[1,0]]
k = 2
expected = [[0,1],[1,0]]
assert_equal(expected, k_closest(points, k))

# Example 1:
points = [[1,3],[-2,2]]
k = 1
expected = [[-2,2]]
assert_equal(expected, k_closest(points, k))
=begin
Explanation:
    The distance between (1, 3) and the origin is sqrt(10).
    The distance between (-2, 2) and the origin is sqrt(8).
    Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
    We only want the closest K = 1 points from the origin, so the answer is just [[-2,2]].
=end

# Example 2:
points = [[3,3],[5,-1],[-2,4]]
k = 2
expected = [[3,3],[-2,4]]
# (The answer [[-2,4],[3,3]] would also be accepted.)
assert_equal(expected, k_closest(points, k))

require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n
# @return {Integer}
def count_primes(n)
  return 0 if n <= 2

  e = Array.new(n, 1)
  e[0] = 0
  e[1] = 0
  (2..Math.sqrt(n)).each do |i|
    next if e[i].zero?
    f = i * 2
    loop do
      e[f] = 0
      f += i
      break if f >= n
    end
  end
  e.reduce(:+)
end

count_primes(2)

# Example 1:
n = 10
expected = 4
# Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
assert_equal(expected, count_primes(n))

# Example 2:
n = 0
expected = 0
assert_equal(expected, count_primes(n))

# Example 3:
n = 1
expected = 0
assert_equal(expected, count_primes(n))

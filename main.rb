def sum_primes(arr)
  require 'prime'
  s = arr.reduce(0) { |sum, n| sum + (Prime.prime?(n) ? n : 0) }
  s == 0 ? nil : s
end

p sum_primes([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 17
p sum_primes([2, 3, 4, 11, 20, 50, 71]) == 87
p sum_primes([]) == nil
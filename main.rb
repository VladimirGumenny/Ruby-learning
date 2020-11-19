def fat_prime(a, b)
  require 'prime'
  a, b = b, a if a > b
  (a..b).select { |n| Prime.prime?(n) }.max
end

p fat_prime(10, 2) == 7
# [10, 9, 8, 7, 6, 5, 4, 3, 2, 1] and the largest prime is 7.

p fat_prime(2, 10) == 7
# range [2, 3, 4, 5, 6, 7, 8, 9, 10] and the largest prime is 7.

p fat_prime(4, 24) == 23
# range [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24] the largest prime is 23.
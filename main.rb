def find_factors(n)
  (1..n).select { |i| n % i == 0}
end

p find_factors(9) == [1, 3, 9]
# 9 has three factors 1, 3 and 9
p find_factors(12) == [1, 2, 3, 4, 6, 12]
p find_factors(20) == [1, 2, 4, 5, 10, 20]
p find_factors(0) == []
# 0 has no factors

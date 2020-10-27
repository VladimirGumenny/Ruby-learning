def sum_fractions(arr)
  arr.reduce(0) { |sum, r| sum + Rational(r[0], r[1]) }.round
end


p sum_fractions([[18, 13], [4, 5]]) == 2
p sum_fractions([[36, 4], [22, 60]]) == 9
p sum_fractions([[11, 2], [3, 4], [5, 4], [21, 11], [12, 6]]) == 11
def straight_digital(number)
  return "Not Straight" if number < 100

  s = number.to_s
  return "Trivial Straight" if s.squeeze.size == 1

  d = s[1].to_i - s[0].to_i
  (1..s.size - 1).each { |i| return 'Not Straight' unless s[i].to_i - s[i-1].to_i == d }
  d
end


p straight_digital(123) == 1
# 2 - 1 = 1 | 3 - 2 = 1

p straight_digital(753) == -2
# 5 - 7 = -2 | 3 - 5 = -2

p straight_digital(666) == "Trivial Straight"
# There's a single repeating digit (step = 0).

p straight_digital(124) == "Not Straight"
# 2 - 1 = 1 | 4 - 2 = 2
# A valid sequence has always the same step between its digits.

p straight_digital(99) == "Not Straight"
# The number is lower than 100.
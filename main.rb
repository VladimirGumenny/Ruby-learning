def divisible_by_b(a, b)
  ((a / b) + 1) * b
end

p divisible_by_b(98, 3) == 99
p divisible_by_b(17, 8) == 24
p divisible_by_b(14, 11) == 22

p1 = 'str'
p2 = [p1]

x1 = Array(p1)
x2 = Array(p2)
p
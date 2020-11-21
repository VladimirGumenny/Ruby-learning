def harmonic(n)
  (1..n).inject(0){ |sum, i| sum + 1.0 / i }.round(3)
end

p harmonic(3) #== 1.833
p harmonic(1) == 1.0
p harmonic(5) == 2.283
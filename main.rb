def valid_division(d)
  a, b = d.split('/').map(&:to_i)
  return 'invalid' if b.zero?

  a % b == 0
end

p valid_division("6/3") == true
p valid_division("30/25") == false
p valid_division("0/3") == true
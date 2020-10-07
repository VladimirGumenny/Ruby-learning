def factorial(n)
 (1..n).inject(:*) || 1
end

def eval_factorial(arr)
  arr.reduce(0) { |sum, v| sum + factorial(v.to_i) }
end

p eval_factorial(["2!", "3!"]) == 8

p eval_factorial(["5!", "4!", "2!"]) == 146

p eval_factorial(["0!", "1!"]) == 2
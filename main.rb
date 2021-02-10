def factorial(n)
  (1..n).inject(:*) || 1
end

def grid_pos(arr)
  factorial(arr[0] + arr[1]) / factorial(arr[0]) / factorial(arr[1])
end

p grid_pos([1, 1]) == 2
p grid_pos([6, 4]) == 210
p grid_pos([5, 5]) == 252

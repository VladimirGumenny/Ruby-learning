def cons(arr)
  arr.sort == (arr.min..arr.max).to_a
end

p cons([5, 1, 4, 3, 2]) == true
# // Can be re-arranged to form [1, 2, 3, 4, 5]

p cons([5, 1, 4, 3, 2, 8]) == false

p cons([5, 6, 7, 8, 9, 9]) == false
# // 9 appears twice
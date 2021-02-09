def has_consecutive_series(v1, v2)
  v = (0...[v1.size, v2.size].max).map { |i| (v1[i] || 0) + (v2[i] || 0) }
  v.each_cons(2).all? { |i, j| j - i == v[1] - v[0] }
end

# [3 5 1 -5 ]  =>  [3+4  5+3  1+8  15-5]  =  [7 8 9 10]  =>  true
# [4 3 8 15]
v1 = [3, 5, 1, -5]
v2 = [4, 3, 8, 15]
p has_consecutive_series(v1, v2) == true

# [2 2 2  ]  =>  [2+5  2+6  2+7  10+0]  = [ 7 8 9 10]  =>  true
# [5 6 7 10]
v1 = [2, 2, 2  ]
v2 = [5, 6, 7, 10]
p has_consecutive_series(v1, v2) == true

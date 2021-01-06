def parallel_resistance(arr)
  (1.0 / (arr.map{ |r| 1.0/r }.inject(:+))).round(1)
end

p parallel_resistance([6, 3, 6]) == 1.5

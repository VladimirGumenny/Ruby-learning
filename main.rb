def no_intersecting_ones(arr)
  arr.all? { |row| row.count(1) != 2 } && arr.transpose.all? { |row| row.count(1) != 2 }
end

p no_intersecting_ones([
                         [0, 0, 0, 1],
                         [1, 0, 0, 0],
                         [0, 0, 0, 1]
                       ]) == false

p no_intersecting_ones([
                       [0, 0, 1, 1],
                       [0, 0, 0, 0],
                       [0, 0, 0, 0]
                     ]) == false

p no_intersecting_ones([
                        [0, 1],
                        [1, 0]
                      ]) == true

p no_intersecting_ones([
                       [1, 1],
                       [0, 0]
                     ]) == false

p no_intersecting_ones([
                       [0, 0, 0, 1],
                       [1, 0, 0, 0],
                       [0, 1, 0, 0]
                     ]) == true
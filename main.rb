def ordered_matrix(a, b)
  i = 0
  res = []
  a.times do
    row = []
    b.times do
      row << (i += 1)
    end
    res << row
  end
  res
end

p ordered_matrix(5, 5) == [
                           [1, 2, 3, 4, 5],
                           [6, 7, 8, 9, 10],
                           [11, 12, 13, 14, 15],
                           [16, 17, 18, 19, 20],
                           [21, 22, 23, 24, 25]
                         ]

p ordered_matrix(1, 1) == [[1]]

p ordered_matrix(1, 5) == [[1, 2, 3, 4, 5]]
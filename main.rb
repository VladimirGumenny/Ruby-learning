def row_sum(n)
  start = 1
  (2..n).each { |i| start += i - 1 }
  n * (2 * start + n - 1) / 2
end

p row_sum(1) == 1
p row_sum(2) == 5
p row_sum(3) == 15
p row_sum(4) == 34
p row_sum(1000) == 500000500
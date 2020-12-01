def coloured_triangle(row)
  return row if row.size == 1

  (0...row.size - 1).each do
    next_row = ''
    row.chars.each_cons(2) do |pair|
      if pair[0] == pair[1]
        next_row += pair[0]
      else
        next_row += (%w[R G B] - pair)[0]
      end
    end
    row = next_row
  end
  row[0]
end

p coloured_triangle('GB') == 'R'
p coloured_triangle('RBRGBRBGGRRRBGBBBGG') == 'G'
p coloured_triangle('B') == 'B'
p coloured_triangle('RBRGBRB') == 'G'
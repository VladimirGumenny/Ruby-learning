require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1

  res = []
  a = Array.new(num_rows, nil)
  row = 0
  col = 0
  (0...s.size).each do |pointer|
    if col % (num_rows - 1) == 0
      a[row] = s[pointer]
      row += 1
      if row == num_rows
        row = 0
        col += 1
        res << a.dup
        a = Array.new(num_rows, nil)
      end
    else
      row = num_rows - col % (num_rows - 1) - 1
      a[row] = s[pointer]
      res << a.dup
      col += 1
      row = 0
      a = Array.new(num_rows, nil)
    end
  end
  res << a
  res.transpose.join
end


assert_equal convert("PAYPALISHIRING", 2), "PYAIHRNAPLSIIG"
assert_equal convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR", "*** first failed ***"
assert_equal convert("PAYPALISHIRING", 4), "PINALSIGYAHRPI"

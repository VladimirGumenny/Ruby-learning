def calculate_arrowhead(arr)
  t = arr.reduce(:+)
  count = t.count('>') - t.count('<')
  return '' if count.zero?

  (count > 0 ? '>' : '<') * count.abs
end

p calculate_arrowhead([">>>>", "<", "<", "<"]) == ">"
p calculate_arrowhead([">", "<", ">>", "<", "<<<"]) == "<<"
p calculate_arrowhead([">>>", "<<<"]) == ""
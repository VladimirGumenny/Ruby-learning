def math_expr?(expr)
  eval(expr) rescue return false
  true
end

p math_expr?("4 + 5") == true
p math_expr?("4*6") == true
p math_expr?("4*no") == false
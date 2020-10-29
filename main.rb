def format_num(num)
  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end


p format_num(1000) == "1,000"
p format_num(100000) == "100,000"
p format_num(20) == "20"
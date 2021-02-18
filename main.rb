def happy_year(year)
  loop do
    year += 1
    return year if year.to_s.chars.uniq.size == 4
  end
end

p happy_year(2017) == 2018
# // 2018 has all distinct digits

p happy_year(1990) == 2013

p happy_year(2021) == 2031
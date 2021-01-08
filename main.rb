def little_big(num)
  i = 1
  odd = 5
  even = 100
  loop do
    if i.odd?
      return odd if i == num
      odd += 1
    else
      return even if i == num
      even *= 2
    end
    i += 1
  end
end

p little_big(4) == 200
p little_big(5) == 7
p little_big(28) == 819200
def prime(x)
  max = Math.sqrt(x)
  a = Array.new(max, true)
  (2...max).each do |i|
    next unless a[i]
    return false if x % i == 0
    n = i * 2
    loop do
      a[n] = false if a[n]
      n += i
      break if n >= max
    end
  end
  true
end

t0 = Time.now
p prime(777777777777777) == false
t1 = Time.now
p "Time: #{t1 - t0} sec"
p prime(7) == true
p prime(56963) == true
p prime(5151512515524) == false

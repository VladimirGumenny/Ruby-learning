def legendre(p, n)
  res = 0
  i = 1
  loop do
    d = p ** i
    return res if d > n

    i += 1
    res += n / d
  end
end

p legendre(5, 100) == 24
p legendre(2, 128) == 127
p legendre(3, 50) == 22
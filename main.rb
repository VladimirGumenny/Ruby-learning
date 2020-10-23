def spin_around(arr)
  arr.reduce(0) { |sum, e| sum + (e == 'right' ? 90 : -90) }.abs / 360
end

p spin_around(['left']) == 0
p spin_around(["left", "right", "left", "right"]) == 0
p spin_around(["right", "right", "right", "right", "right", "right", "right", "right"]) == 2
p spin_around(["left", "left", "left", "left"]) == 1
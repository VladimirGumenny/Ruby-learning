def parking_exit(arr)
  car = arr[0].index(2)
  cols = arr[0].size
  res = []
  (0...arr.size).each do |row|
    a = arr[row]
    if row < arr.size - 1
      st = a.index(1)
      d = st - car
      if d < 0
        res << "L#{-d}"
      elsif d > 0
        res << "R#{d}"
      end
      if d != 0
        res << 'D1'
      else
        res[-1] = "D#{res[-1][1..-1].to_i + 1}"
      end
      car = st
    else
      unless car == cols - 1
        res << "R#{cols - car - 1}"
      end
    end
  end
  res
end

p parking_exit([
               [2, 0, 0, 1, 0],
               [0, 0, 0, 1, 0],
               [0, 0, 0, 0, 0]
             ])


arr = [
  [1, 0, 0, 0, 2],
  [0, 0, 0, 0, 0]
]

# Starting from 2, move to left 4 times = "L4"
# Go down from stairs 1 step = "D1"
# Move to right 4 times to exit from right bottom corner = "R4"

result = %w[L4 D1 R4]
p parking_exit(arr) == result
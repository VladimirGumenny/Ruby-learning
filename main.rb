def fruit_salad(arr)
  arr.flat_map do |fruit|
    mid = fruit.size / 2 - 1
    [fruit[0..mid], fruit[mid + 1..-1]]
  end.sort.join
end

p fruit_salad(['apple', 'pear', 'grapes']) == 'apargrapepesple'

p fruit_salad(['raspberries', 'mango']) == 'erriesmangoraspb'

p fruit_salad(['banana']) == 'anaban'
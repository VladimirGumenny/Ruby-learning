def dice_score(throws)
  res = 0
  h = Hash.new(0)
  throws.each { |v| h[v] += 1 }
  h.each do |num, qnt|
    next if qnt < 3
    res += num == 1 ? 1000 : num * 100
    h[num] -= 3
    h.delete(num) if h[num].zero?
  end
  h.each do |num, qnt|
    next unless [1, 5].include?(num)
    res += (num == 1 ? 100 : 50) * qnt
    h.delete(num)
  end
  res
end


p dice_score([1, 5, 1, 3, 4]) == 250
p dice_score([2, 3, 4, 6, 2]) == 0
p dice_score([4, 4, 4, 3, 3]) == 400
p dice_score([2, 4, 4, 5, 4]) == 450
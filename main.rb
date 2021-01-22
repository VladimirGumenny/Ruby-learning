def change_enough(change, amount_due)
  coins = [0.25, 0.1, 0.05, 0.01]
  (0...coins.size).each do |i|
    qnt = [(amount_due / coins[i]).floor, change[i]].min
    amount_due = (amount_due - qnt * coins[i]).round(2)
  end
  amount_due.zero?
end

p change_enough([2, 100, 0, 0], 14.11) == false
p change_enough([0, 0, 20, 5], 0.75) == true
p change_enough([30, 40, 20, 5], 12.55) == true
p change_enough([10, 0, 0, 50], 3.85) == false
p change_enough([1, 0, 5, 219], 19.99) == false
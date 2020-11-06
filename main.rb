def bill_split(spicy, cost)
  you = cost.each_with_index.map { |price, idx| spicy[idx] == 'N' ? price/2.0 : price }.reduce(:+)
  friend = cost.each_with_index.map { |price, idx| spicy[idx] == 'S' ? 0 : price/2.0 }.reduce(:+)
  [you, friend]
end


p bill_split(['S', 'S', 'S', 'N', 'N'], [8, 9, 8, 7, 7]) == [32, 7]

p bill_split(["S", "N", "S", "S"], [13, 18, 15, 4]) == [41, 9]
# Since:
# You pay: [13, 9, 15, 4] = 41
# Friend pays: [0, 9, 0, 0] = 9

p bill_split(["N", "S", "N"], [10, 10, 20]) == [25, 15]
# You pay for half of both "N" dishes (5 + 10) and entirely pay for the "S" dish (10).

p bill_split(["N", "N"], [10, 10]) == [10, 10]

p bill_split(["S", "N"], [41, 10]) == [46, 5]
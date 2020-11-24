require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  (1...prices.size).inject(0) do |sum, i|
    sum + ((prices[i] > prices[i - 1]) ? prices[i] - prices[i - 1] : 0)
  end
end



# Example 1:
prices = [7,1,5,3,6,4]
expected = 7
assert_equal(expected, max_profit(prices))
# Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
#     Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.

# Example 2:
prices = [1,2,3,4,5]
expected = 4
assert_equal(expected, max_profit(prices))
# Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
#     Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
# engaging multiple transactions at the same time. You must sell before buying again.

# Example 3:
prices = [7,6,4,3,1]
expected = 0
assert_equal(expected, max_profit(prices))
# Explanation: In this case, no transaction is done, i.e. max profit = 0.
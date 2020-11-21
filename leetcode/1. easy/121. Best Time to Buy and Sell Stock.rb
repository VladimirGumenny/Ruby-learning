require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min_price = prices.max
  max_profit = 0
  prices.each do |price|
    if price < min_price
      min_price = price
    elsif price - min_price > max_profit
      max_profit = price - min_price
    end
  end
  max_profit
end

# Example 1:
prices = [7,1,5,3,6,4]
expected = 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
#     Not 7-1 = 6, as selling price needs to be larger than buying price.
assert_equal(expected, max_profit(prices))

    # Example 2:
prices = [7,6,4,3,1]
expected = 0
# Explanation: In this case, no transaction is done, i.e. max profit = 0.
assert_equal(expected, max_profit(prices))
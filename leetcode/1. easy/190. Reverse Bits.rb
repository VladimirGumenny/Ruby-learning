require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  result = 0

  32.times do
    result <<= 1
    result += n & 1
    n >>= 1
  end

  result
end

# Example 1:
n = 43261596 #0000_0010_1001_0100_0001_1110_1001_1100
expected = 964176192 #(00111001011110000010100101000000)
# Explanation: The input binary string 00000010100101000001111010011100 represents the unsigned integer 43261596, so return 964176192 which its binary representation is 00111001011110000010100101000000.
assert_equal(expected, reverse_bits(n))

# Example 2:
n = 11111111111111111111111111111101
expected = 3221225471 #(10111111111111111111111111111111)
# Explanation: The input binary string 11111111111111111111111111111101 represents the unsigned integer 4294967293, so return 3221225471 which its binary representation is 10111111111111111111111111111111.
assert_equal(expected, reverse_bits(n))
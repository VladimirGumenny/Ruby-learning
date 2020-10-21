def binary_conversion(str)
  return '' if str.empty?
  res = ''
  idx = 0
  loop do
    res += str[idx..idx + 7].to_i(2).chr
    idx += 8
    return res if idx >= str.size
  end
end

p binary_conversion("011001010110010001100001011000100110100101110100") == "edabit"
p binary_conversion("001100010011001000110011") == "123"
p binary_conversion("010010000110010101101100011011000110111100111111") == "Hello?"
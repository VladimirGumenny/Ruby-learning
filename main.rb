def same_length(s)
  return true if s.size.zero?
  return false if s[0] == '0'

  idx = 0
  loop do
    ones = count_until_changed(s, idx)
    zeros = count_until_changed(s, idx + ones)
    return false unless ones == zeros
    idx += ones + zeros
    break if idx == s.size
  end
  true
end

def count_until_changed(s, start)
  return 0 if start >= s.size
  cnt = 1
  (start + 1...s.size).each do |i|
    break unless s[start] == s[i]
    cnt += 1
  end
  cnt
end

p same_length('101') == false
p same_length("110011100010") == true
p same_length("101010110") == false
p same_length("111100001100") == true
p same_length("111") == false
def normal_sequence(n)
  seq = [0, 1, 1, 2, 0, 2, 2, 1]
  seq[(n - 1) % seq.size]


  # seq = [0, 1]
  # return seq[n - 1] if n <= 2
  #
  # (3..n).each { seq[0], seq[1] = seq[1], (seq[0] + seq[1]) % 3 }
  # seq[1]
end

p normal_sequence(1) == 0
p normal_sequence(2) == 1
p normal_sequence(3) == 1
p normal_sequence(20) == 2
p normal_sequence(51013947783) == 2
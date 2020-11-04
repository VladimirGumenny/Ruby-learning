def recaman_seq(seq)
  sub = seq.last - seq.size
  if sub > 0 && !seq.include?(sub)
    seq << sub
  else
    add = seq.last + seq.size
    seq << add
  end
  seq
end

def recaman_index(n)
  seq = [0]
  loop do
    seq = recaman_seq(seq)
    i = seq.index(n)
    return i unless i.nil?
  end
end


p recaman_index(2) == 4
p recaman_index(3) == 2
p recaman_index(7) == 5

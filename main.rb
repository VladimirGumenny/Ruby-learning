def replace_the(str)
  a = str.split
  a.each_with_index.map do |w, idx|
    if w == 'the'
      'aeuio'.include?(a[idx + 1][0]) ? 'an' : 'a'
    else
      w
    end
  end.join(' ')
end

p replace_the("the dog and the envelope") == "a dog and an envelope"
p replace_the("the boy ran at the wall") == "a boy ran at a wall"
p replace_the("the egg, the spoon and the espionage") == "an egg, a spoon and an espionage"
def replace_nth(str, nth, old_char, new_char)
  return str if nth <= 0

  counter = 0
  (0...str.size).each do |i|
    if str[i] == old_char
      counter += 1
      if counter == nth
        str[i] = new_char
        counter = 0
      end
    end
  end

  str
end

p replace_nth("A glittering gem is not enough.", 0, "o", "-") == "A glittering gem is not enough."

p replace_nth("Vader said: No, I am your father!", 2, "a", "o") == "Vader soid: No, I am your fother!"

p replace_nth("Writing a list of random sentences is harder than I initially thought it would be.", 2, "i", "3")  == "Writ3ng a list of random sentences 3s harder than I in3tially thought 3t would be."
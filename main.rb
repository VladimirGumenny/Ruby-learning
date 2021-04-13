def reverse(str)
  letters = str.tr('0-9', '')
  str.tr(letters, letters.reverse)
end

p reverse("ab89c") == "cb89a"
p reverse("jkl5mn923o") == "onm5lk923j"
p reverse("123a45") == "123a45"



=begin
current_type_idx = 0
while  and total_boxes < truck_size
boxes, units = box_types_sorted[current_type_idx]
if truck_size >= total_boxes + boxes
  total_boxes += boxes
  total_units += units * boxes
else
  total_units += units * (truck_size - total_boxes)
  total_boxes += truck_size - total_boxes
end
puts "idx: #{current_type_idx}"
puts "total_boxes: #{total_boxes}"
puts "total_units: #{total_units}"
current_type_idx += 1
end
=end

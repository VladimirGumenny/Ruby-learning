require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  box_types_sorted = box_types.sort_by { |b| -b[1] }
  total_boxes = 0
  total_units = 0
  box_types_sorted.each do |box_type|
    boxes, units = box_type
    if truck_size >= total_boxes + boxes
      total_boxes += boxes
      total_units += units * boxes
    else
      total_units += units * (truck_size - total_boxes)
      total_boxes += truck_size - total_boxes
    end
  end
  total_units
end

boxTypes = [[1,3],[2,2],[3,1]]
truckSize = 4
expected = 8
assert_equal(expected, maximum_units(boxTypes, truckSize))

boxTypes = [[5,10],[2,5],[4,7],[3,9]]
truckSize = 10
expected = 91
assert_equal(expected, maximum_units(boxTypes, truckSize))


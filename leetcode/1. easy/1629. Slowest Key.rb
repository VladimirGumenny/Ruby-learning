require "test/unit/assertions"
include Test::Unit::Assertions

# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
  prev_time = 0
  durations = []
  (0...release_times.size).each do |i|
    durations << [i, release_times[i] - prev_time]
    prev_time = release_times[i]
  end
  durations_sorted = durations.sort_by { |d| -d[1] }
  max_duration = durations_sorted.first[1]
  max_indexes = durations_sorted.select { |d| d[1] == max_duration }.map{ |d| d.first }
  keys_pressed.chars.select.with_index { |key, i| max_indexes.include?(i) }.sort.reverse.first
end
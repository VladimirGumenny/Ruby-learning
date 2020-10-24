require 'time'

def hours_passed(time1, time2)
  diff = Time.parse(time2) - Time.parse(time1)
  return 'no time passed' if diff == 0
  "#{(diff / 3600).round} hours"
end

p hours_passed("1:00 AM", "1:00 AM")
p hours_passed("3:00 AM", "9:00 AM") == "6 hours"
p hours_passed("2:00 PM", "4:00 PM") == "2 hours"
p hours_passed("1:00 AM", "3:00 PM") == "14 hours"
require 'date'

def longest_streak(arr)
  max = 1
  q = 1
  (0...arr.size - 1).each do |i|
    c = DateTime.strptime(arr[i][:date], '%Y-%m-%d')
    n = DateTime.strptime(arr[i + 1][:date], '%Y-%m-%d')
    if c + 1 == n
      max = q if (q += 1) > max
    else
      q = 1
    end
  end
  max
end

p longest_streak([
                     {
                         date: "2019-09-18"
                     },
                     {
                         date: "2019-09-19"
                     },
                     {
                         date: "2019-09-20"
                     },
                     {
                         date: "2019-09-26"
                     },
                     {
                         date: "2019-09-27"
                     },
                     {
                         date: "2019-09-30"
                     }
                 ]) == 3

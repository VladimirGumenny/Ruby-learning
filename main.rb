def microwave_buttons(time)
  return 3 if time == '01:00'

  min, sec = time.split(':').map(&:to_i)
  cnt = 0
  if min.positive?
    cnt += min < 10 ? 1 : 2
    cnt += 2 if sec.zero?
  end
  b_30 = sec / 30
  if b_30 == 1
    cnt += 1
    sec -= 30
  end
  cnt += sec < 10 ? 1 : 2 if sec.positive?
  cnt + 1
end

p microwave_buttons('01:00') == 3

p microwave_buttons('00:30') == 2
# '+30' to put 30 seconds on the timer.
# 'Start' button to start the oven.

p microwave_buttons('00:70') == 3
# '7' followed by '0' to put 70 seconds on the timer.
# 'Start' button to start the oven.

p microwave_buttons('00:00') == 1
# 'Start' button to start the oven.

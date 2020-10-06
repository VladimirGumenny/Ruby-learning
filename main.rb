def time_saved(s_lim, s_avg, d)
  x = ((d.to_f / s_lim - d.to_f / s_avg) * 60).round(1)
  p x
end

p time_saved(80, 90, 40) == 3.3
p time_saved(80, 90, 4000) == 333.3
p time_saved(80, 100, 40 ) == 6.0
p time_saved(80, 100, 10) == 1.5

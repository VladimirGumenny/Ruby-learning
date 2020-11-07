def how_close_to_c(rapidity)
  ("%3.2e" % (1 / Math.cosh(rapidity * 2))).gsub('-0', '-')
end


p how_close_to_c(3.14) == "3.75e-3"
p how_close_to_c(42) == "6.61e-37"
p how_close_to_c(355) == "8.95e-309"
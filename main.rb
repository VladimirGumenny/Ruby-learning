def fifth(*args)
  return 'Not enough arguments' if args.size < 5
  args[4].class
end

p fifth("a", 2, 3, [1, 2, 3], "five") == String
p fifth() == "Not enough arguments"
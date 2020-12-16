def calculate_score(games)
  abigail = 0
  benson = 0
  wins = [['P', 'R'], ['R', 'S'], ['S', 'P']]
  games.each do |game|
    next if game[0] == game[1]
    wins.include?(game) ? abigail += 1 : benson += 1
  end
  %w(Tie Abigail Benson)[abigail <=> benson]
end

p calculate_score([['S', 'S'], ['S', 'P'], ['R', 'S'], ['S', 'R'], ['R', 'R']]) == "Abigail"

p calculate_score([["R", "R"], ["S", "S"]]) == "Tie"

p calculate_score([["R", "P"], ["R", "S"], ["S", "P"]]) == "Abigail"

# Benson wins the first game (Paper beats Rock).
# Abigail wins the second game (Rock beats Scissors).
# Abigail wins the third game (Scissors beats Paper).
# Abigail wins 2/3.

p calculate_score([["S", "R"], ["R", "S"], ["R", "R"]]) == "Tie"
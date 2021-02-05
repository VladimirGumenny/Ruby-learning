def leaderboards(users)
  users.map do |user|
    user[:true_score] = user[:reputation] * 2 + user[:score]
    user
  end
  users.sort_by! { |user| -user[:true_score] }.each do |user|
    user.delete(:true_score)
  end
  users
end

p leaderboards([
                 { name: "a", score: 100, reputation: 20 },
                 { name: "b", score: 90, reputation: 40 },
                 { name: "c", score: 115, reputation: 30 },
               ]) == [
  { name: "c", score: 115, reputation: 30 }, # trueScore = 175
  { name: "b", score: 90, reputation: 40 }, # trueScore = 170
  { name: "a", score: 100, reputation: 20 } # trueScore = 140
]
def track_robot(steps)
  x, y = 0, 0
  direction = 'east'
  directions = %w[east south west north]
  deltas = {
    'east' => [1, 0],
    'south' => [0, -1],
    'west' => [-1, 0],
    'north' => [0, 1]
  }
  steps.chars do |step|
    case step
    when '.'
      dx, dy = deltas[direction]
      x += dx
      y += dy
    when '<'
      direction = directions[(directions.index(direction) - 1) % 4]
    when '>'
      direction = directions[(directions.index(direction) + 1) % 4]
    end
  end
  [x, y]
end

p track_robot("..<.<.") == [1, 1]
def generation(x, y)
  gen_m = {
      -3 => "great grandfather",
      -2 => "grandfather",
      -1 => 'father',
      0 => 'me!',
      1 => 'son',
      2 => 'grandson',
      3 => 'great grandson'
  }

  gen_f = {
      -3 => 'great grandmother',
      -2 => 'grandmother',
      -1 => 'mother',
      0 => 'me!',
      1 => 'daughter',
      2 => 'granddaughter',
      3 => 'great granddaughter'
  }

  y == 'm' ? gen_m[x] : gen_f[x]
end

p generation(2, "f") == "granddaughter"
p generation(-3, "m") == "great grandfather"
p generation(1, "f") == "daughter"
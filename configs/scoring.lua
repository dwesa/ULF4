local scoring = {}

scoring.perLetter = {
  A = 1,
  B = 3,
  C = 3,
  D = 2,
  E = 1,
  F = 4,
  G = 2,
  H = 4,
  I = 1,
  J = 8,
  K = 5,
  L = 1,
  M = 3,
  N = 1,
  O = 1,
  P = 3,
  Q = 15,
  R = 1,
  S = 1,
  T = 1,
  U = 1,
  V = 4,
  W = 4,
  X = 8,
  Y = 4,
  Z = 10,
}

scoring.ofWord = function(word)
  local score = 0
  for i=1, string.len(word) do
    score = score + scoring.perLetter[string.upper(word[i])]
  end
  return score
end

return scoring

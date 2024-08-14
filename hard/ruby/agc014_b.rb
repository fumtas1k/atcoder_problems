# 92
# AGC014/B

N, M = gets.split.map(&:to_i)
G = Array.new(N, 0)
M.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  G[a] += 1
  G[b] += 1
end
puts G.all?(&:even?) ? 'YES' : 'NO'

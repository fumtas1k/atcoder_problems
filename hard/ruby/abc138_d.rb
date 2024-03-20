# 27
# ABC138/D
# 深さ優先探索

N, Q = gets.split.map(&:to_i)
G = Array.new(N) { [] }
(N - 1).times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  G[a] << b
  G[b] << a
end

@counters = [0] * N
Q.times do
  q, x = gets.split.map(&:to_i)
  @counters[q - 1] += x
end

def dfs(pos, pre = -1)
  G[pos].each do |i|
    next if i == pre
    @counters[i] += @counters[pos]
    dfs(i, pos)
  end
end

dfs(0)
puts @counters.join(" ")

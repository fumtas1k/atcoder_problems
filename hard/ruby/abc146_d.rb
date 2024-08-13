# 91
# ABC146/D
# 深さ優先探索
# MEX

N = gets.to_i
AB = {}
G = Array.new(N) { [] }
(N - 1).times do |i|
  a, b = gets.split.map(&:to_i).map(&:pred)
  AB[[a, b].minmax] = i
  G[a] << b
  G[b] << a
end

@ans = Array.new(N - 1)
def dfs(pos = 0, pre = -1, color = -1)
  c = 0
  G[pos].each do |to|
    next if to == pre
    c += 1 if c == color
    @ans[AB[[pos, to].minmax]] = c + 1
    dfs(to, pos, c)
    c += 1
  end
end

dfs
puts @ans.max
puts @ans

# 90
# ABC126/D
# 法則性
# DP
# 偶奇

N = gets.to_i
G = Array.new(N) { [] }
(N - 1).times do
  u, v, w = gets.split.map(&:to_i)
  G[u - 1] << [v - 1, w]
  G[v - 1] << [u - 1, w]
end

# 根から頂点iまでの距離をdi
# 最小共通祖先をwとする、uとvの距離はdu + dv - 2dw
# duとdvの偶奇が一致するとき、uとvの距離は偶数
# つまり、uとvの距離が偶数なら同色、奇数なら異色とするのが最適
@color = Array.new(N, -1)
@color[0] = 0
def dfs(pos = 0)
  G[pos].each do |to, w|
    next if @color[to] >= 0
    @color[to] = w.even? ? @color[pos] : 1 - @color[pos]
    dfs(to)
  end
end
dfs
puts @color

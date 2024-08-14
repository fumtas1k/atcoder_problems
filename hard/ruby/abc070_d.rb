# 93
# ABC070/D
# ダイクストラ法

require "ac-library-rb/priority_queue"

def dijkstra(start, tree)
  dists = Array.new(tree.size, Float::INFINITY)
  dists[start] = 0
  log = AcLibraryRb::PriorityQueue.new([[start, 0]]) {|a, b| a[1] < b[1] }
  until log.empty?
    pos, dist = log.pop
    next if dist > dists[pos]
    tree[pos].each do |to, d|
      next if dists[to] <= dist + d
      dists[to] = dist + d
      log << [to, dists[to]]
    end
  end
  dists
end

N = gets.to_i
G = Array.new(N) { [] }
(N - 1).times do
  a, b, c = gets.split.map(&:to_i)
  G[a - 1] << [b - 1, c]
  G[b - 1] << [a - 1, c]
end
Q, K = gets.split.map(&:to_i)
dists = dijkstra(K - 1, G)
ans = Q.times.map do
  x, y = gets.split.map(&:to_i).map(&:pred)
  dists[x] + dists[y]
end
puts ans

# 38
# ABC151/D
# BFS
# 始点のみ

H, W = gets.split.map(&:to_i)
S = Array.new(H) { gets.chomp.chars }

@dists = Array.new(H * W) { [Float::INFINITY] * (H * W) }

def bfs(sr, sc)
  return if S[sr][sc] == "#"
  @dists[sr * W + sc][sr * W + sc] = 0
  log = [[sr, sc]]
  visited = Array.new(H) { [false] * W }
  visited[sr][sc] = true
  until log.empty?
    r, c = log.shift
    [[1, 0], [0, 1], [- 1, 0], [0, - 1]].each do |dr, dc|
      nr, nc = r + dr, c + dc
      next unless nr.between?(0, H - 1) && nc.between?(0, W - 1) && S[nr][nc] == "."
      next if visited[nr][nc]
      visited[nr][nc] = true
      @dists[sr * W + sc][nr * W + nc] = @dists[sr * W + sc][r * W + c] + 1
      log << [nr, nc]
    end
  end
end

H.times do |sr|
  W.times do |sc|
    bfs(sr, sc)
  end
end

puts @dists.flatten.filter { _1 != Float::INFINITY }.max

# 83
# AGC033/A
# 幅優先探索

H, W = gets.split.map(&:to_i)
A = Array.new(H) { Array.new(W) }
# queue = [[r, c]]の形で持つと、shiftが遅いので、別々に持つ
queue_r = []
queue_c = []
H.times do |i|
  gets.chomp.chars.map.with_index do |a, j|
    next if a == "."
    A[i][j] = 0
    queue_r << i
    queue_c << j
  end
end

until queue_r.empty?
  r = queue_r.shift
  c = queue_c.shift
  [[r - 1, c], [r + 1, c], [r, c - 1], [r, c + 1]].each do |nr, nc|
    # between?を使用するとTLEするので、条件分岐で書く
    next if nr < 0 || nr >= H || nc < 0 || nc >= W || !A[nr][nc].nil?
    A[nr][nc] = A[r][c] + 1
    queue_r << nr
    queue_c << nc
  end
end

puts A.flatten.max

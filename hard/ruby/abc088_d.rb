# 50
# ABC088/D
# 幅優先探索

H, W = gets.split.map(&:to_i)
S = Array.new(H) { gets.chomp.chars }
cnt_w = S.flatten.count { _1 == "." }

log = [[0, 0, 1]]
until log.empty?
  r, c, cnt = log.shift
  next if S[r][c] == "#"
  if [r, c] == [H - 1, W - 1]
    puts cnt_w - cnt
    exit
  end
  S[r][c] = "#"
  [[1, 0], [0, 1], [-1, 0], [0, -1]].each do |dr, dc|
    nr, nc = r + dr, c + dc
    next unless nr.between?(0, H - 1) && nc.between?(0, W - 1) && S[nr][nc] == "."
    log << [nr, nc, cnt + 1]
  end
end

puts -1

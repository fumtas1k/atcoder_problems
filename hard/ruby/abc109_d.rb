# 96
# ABC109/D
# 力技

H, W = gets.split.map(&:to_i)
A = Array.new(H) { gets.split.map(&:to_i) }
# 奇数なら右に1つずらす、偶数ならそのまま
# 右端で奇数なら下に1つずらす

ans = []
H.times do |i|
  W.times do |j|
    next if A[i][j].even?
    next if i == H - 1 && j == W - 1 # 右下のマスまで来たら終了
    if j < W - 1
      ans << [i, j, i, j + 1]
      A[i][j + 1] += 1
    else
      ans << [i, j, i + 1, j]
      A[i + 1][j] += 1
    end
    A[i][j] -= 1
  end
end

puts ans.size
puts ans.map { _1.map(&:succ).join(' ') }.join("\n")

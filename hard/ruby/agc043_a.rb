# 3
# AGC043/A
# 全探索
# DP
# 変化点

H, W = gets.split.map(&:to_i)
S = Array.new(H) { gets.chomp.chars }
dp = Array.new(H) { Array.new(W, Float::INFINITY) }
dp[0][0] = S[0][0] == "#" ? 1 : 0

H.times do |i|
  W.times do |j|
    if i > 0
      cost = S[i][j] == "#" && S[i - 1][j] == "." ? 1 : 0
      dp[i][j] = [dp[i][j], dp[i - 1][j] + cost].min
    end

    if j > 0
      cost = S[i][j] == "#" && S[i][j - 1] == "." ? 1 : 0
      dp[i][j] = [dp[i][j], dp[i][j - 1] + cost].min
    end
  end
end

puts dp[-1][-1]

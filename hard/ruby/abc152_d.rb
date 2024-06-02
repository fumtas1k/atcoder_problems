# 60
# ABC152/D
# 全探索
# 動的計画法

N = gets.to_i

# dp[i:= 末尾][j:= 先頭] = 場合の数
dp = Array.new(10) { Array.new(10, 0) }

1.upto(N) do |i|
  digits = i.digits
  dp[digits[0]][digits[-1]] += 1
end

ans = 0
10.times do |i|
  10.times do |j|
    ans += dp[i][j] * dp[j][i]
  end
end

puts ans

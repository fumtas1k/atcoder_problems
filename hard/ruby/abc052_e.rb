# 55
# 動的計画法

N, A, B = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)

dp = [0]
1.upto(N - 1) do |i|
  dp[i] = dp[i - 1] + [(X[i] - X[i - 1]) * A, B].min
end
puts dp[-1]

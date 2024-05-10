# 48
# 動的計画法

H, N = gets.split.map(&:to_i)
AB = Array.new(N) { gets.split.map(&:to_i) }

dp = Array.new(H + 1, Float::INFINITY)
dp[H] = 0

AB.each do |a, b|
  H.downto(1) do |i|
    j = [i - a, 0].max
    dp[j] = [dp[j],dp[i] + b].min
  end
end

puts dp[0]

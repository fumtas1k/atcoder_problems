# 73
# ABC099/C
# 動的計画法

N = gets.to_i

DP = Array.new(N + 1, N)
DP[0] = 0

1.upto(N) do |i|
  pow6 = pow9 = 1
  while pow6 <= i
    DP[i] = [DP[i], DP[i - pow6] + 1].min
    pow6 *= 6
  end
  while pow9 <= i
    DP[i] = [DP[i], DP[i - pow9] + 1].min
    pow9 *= 9
  end
end

puts DP[N]

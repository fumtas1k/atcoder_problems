# 89
# SUMITRUST2019/E
# DP

M = 10 ** 9 + 7
N = gets.to_i
A = gets.split.map(&:to_i)

cnts = Array.new(N + 1, 0)
cnts[0] = 3
ans = 1
A.each do |a|
  ans *= cnts[a]
  ans %= M
  break if cnts[a].zero?
  cnts[a] -= 1
  cnts[a + 1] += 1
end

puts ans

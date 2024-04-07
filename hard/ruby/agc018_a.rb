# 30
# AGC018/A
# 最大公約数

N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
MAX = A.max
gcd = A.reduce(:gcd)

puts MAX >= K && K % gcd == 0 ? "POSSIBLE" : "IMPOSSIBLE"

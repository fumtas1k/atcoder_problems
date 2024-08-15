# 95
# ABC147/D
# XOR

M = 10 ** 9 + 7
MAX_BIT = 60
N = gets.to_i
A = gets.split.map(&:to_i)

ans = (MAX_BIT + 1).times.reduce(0) do |acc, i|
  one = A.sum { _1[i] }
  zero = N - one
  (acc + zero * one * (1 << i) % M) % M
end

puts ans

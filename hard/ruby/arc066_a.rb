# 34
# ABC050/C
# ARC066/A
# 周期性

M = 10 ** 9 + 7
N = gets.to_i
A = gets.split.map(&:to_i).tally

start = N.even? ? 1 : 0

start.step(N, 2) do |i|
  next if i.zero? && A[i] == 1
  next if A[i] == 2
  puts 0
  exit
end

puts start.zero? ? 2.pow(A.size - 1, M) : 2.pow(A.size, M)

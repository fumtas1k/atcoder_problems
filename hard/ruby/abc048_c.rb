# 81
# ABC048/C
# 貪欲法

N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = 0
1.upto(N - 1) do |i|
  diff = (A[i - 1] + A[i]) - X
  next if diff <= 0
  ans += diff
  A[i] = [A[i] - diff, 0].max
end

puts ans

# 2
# JSC2019_QQUAL/B
# 転倒数
# 繰り返し

M = 10 ** 9 + 7
N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
here = Array.new(N, 0)
there = Array.new(N, 0)

A.each_with_index do |a, i|
  A.each_with_index do |b, j|
    here[i] += 1 if a > b && i < j
    there[i] += 1 if a > b
  end
end

ans = 0
N.times do |i|
  ans += K * here[i] % M
  ans += there[i] * (K - 1) * K / 2 % M
  ans %= M
end

puts ans

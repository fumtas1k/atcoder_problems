# 24
# KEYENCE2020/B
# 貪欲法

N = gets.to_i
LR = Array.new(N) { gets.split.map(&:to_i).then { |x, l| [x - l, x + l] } }.sort_by(&:last)

ans = 1
r = LR[0].last
1.upto(N - 1) do |i|
  next if r > LR[i].first
  ans += 1
  r = LR[i].last
end
puts ans

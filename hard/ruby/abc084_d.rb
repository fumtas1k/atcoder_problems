# 45
# ABC084/D
# 素数

Q = gets.to_i
LR = Array.new(Q) { gets.split.map(&:to_i) }
MAX = LR.flatten.max

is_prime = [true] * (MAX + 1)
is_prime[0] = is_prime[1] = false

2.upto(MAX) do |i|
  next unless is_prime[i]
  (2 * i).step(MAX, i) { is_prime[_1] = false }
end

csum = [0] * (MAX + 1)
3.upto(MAX) do |i|
  csum[i] = csum[i - 1]
  next unless i.odd? && is_prime[i] && is_prime[(i + 1) / 2]
  csum[i] += 1
end

ans = []
LR.each do |l, r|
  ans << csum[r] - csum[l - 1]
end

puts ans

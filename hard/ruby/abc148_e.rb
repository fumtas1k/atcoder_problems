# 11
# ABC142/D
# 最大公約数
# 素数

N = gets.to_i

if N.odd?
  puts 0
  exit
end

n = N / 10
ans = n
p5 = 5
while p5 <= n
  ans += n / p5
  p5 *= 5
end

puts ans

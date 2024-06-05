# 63
# ARC058/A

N, K = gets.split.map(&:to_i)
D = gets.split.map(&:to_i)
candidates = [*0 .. 9] - D

ans = N
ans += 1 until (ans.digits - candidates).size.zero?

puts ans

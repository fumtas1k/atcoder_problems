# 97
# ABC105/C
# 2新数

BIT = 40

N = gets.to_i
n = N
ans = Array.new(BIT, 0)
BIT.times do |i|
  next if n[i].zero?
  ans[i] = 1
  n -= (-2).pow(i)
end

ans.pop while ans.size > 1 && ans.last.zero?
puts ans.reverse.join

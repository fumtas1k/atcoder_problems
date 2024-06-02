# 58
# DIVERTA2019/D
# 約数

require "set"

N = gets.to_i
MAX = Math.sqrt(N).to_i + 1

divs = Set.new
1.upto(MAX) do |i|
  next if N % i != 0
  divs << i
  divs << N / i
end

divs = divs.sort

ans = 0
divs.each do |div|
  div -= 1
  ans += div if div > 0 && N.divmod(div).uniq.size == 1

end

puts ans

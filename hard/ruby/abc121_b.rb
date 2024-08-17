# 5
# ABC121/B
# 全探索

N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = Array.new(N) { gets.split.map(&:to_i) }

ans = A.count do |a|
  a.zip(B).sum { _1 * _2 } + C > 0
end

puts ans


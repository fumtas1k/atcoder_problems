# 28
# ABC107/C
# 全探索

N, K = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)

def calc(left, right)
  if left * right >= 0
    [left.abs, right.abs].max
  else
    left.abs + right.abs + [left.abs, right.abs].min
  end
end

dist = []
(N - K + 1).times do |i|
  dist << calc(X[i], X[i + K - 1])
end

puts dist.min

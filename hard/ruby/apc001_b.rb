# 56

N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

diff = B.zip(A).map { _1 - _2 }
b_diff = diff.filter { _1 > 0 }
puts diff.sum >= b_diff.sum { (_1 + 1) / 2 } ? "Yes" : "No"

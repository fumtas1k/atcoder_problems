# 43
# ABC079/D
# Warshall Floyd 法

H, W = gets.split.map(&:to_i)
C = Array.new(10) { gets.split.map(&:to_i) }
A = Array.new(H) { gets.split.map(&:to_i) }

10.times do |k|
  10.times do |i|
    10.times do |j|
      C[i][j] = [C[i][j], C[i][k] + C[k][j]].min
    end
  end
end

puts A.flatten.reject { _1 == -1 }.sum { C[_1][1] }

# 84
# ABC080/C
# BIT全探索

TIMING = 10
N = gets.to_i
F = Array.new(N) { gets.split.map(&:to_i) }
P = Array.new(N) { gets.split.map(&:to_i) }

ans = []
1.upto((1 << TIMING) - 1) do |bit|
  cnts = Array.new(N, 0)
  N.times do |i|
    TIMING.times do |j|
      next if bit[j].zero?
      cnts[i] += F[i][j]
    end
  end
  ans << cnts.map.with_index { |cnt, i| P[i][cnt] }.sum
end

puts ans.max

# 44
# ABC147/C
# BIT全探索

N = gets.to_i
evidence = Array.new(N) { Hash.new(-1) }
N.times do |i|
  a = gets.to_i
  a.times do
    x, y = gets.split.map(&:to_i)
    evidence[i][x - 1] = y
  end
end

ans = []
(1 << N).times do |bit|
  cnt = 0
  N.times do |i|
    next if bit[i].zero?
    cnt += 1
    unless evidence[i].all? {|j, k| [bit[j], -1].include?(k) }
      cnt = -1
      break
    end
  end
  ans << cnt
end

puts ans.max

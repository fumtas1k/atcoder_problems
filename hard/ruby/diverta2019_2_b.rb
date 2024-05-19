# 53
# DIVERTA2019_2/B
# tally

N = gets.to_i
XY = Array.new(N) { gets.split.map(&:to_i) }
DIFF = Array.new(N) { Array.new(N) { [0, 0] } }

N.times do |i|
  N.times do |j|
    DIFF[i][j] = XY[i].zip(XY[j]).map { _1 - _2 }
  end
end

tally = DIFF.flatten(1).tally
tally.delete([0, 0])
# N = 1の場合は、maxは存在せずnilが返るためnilガード
puts N - (tally.values.max || 0)

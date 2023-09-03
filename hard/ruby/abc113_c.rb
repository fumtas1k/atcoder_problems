# 20
# ABC113/C

N, M = gets.split.map(&:to_i)
IPY = Array.new(M) { [_1, *gets.split.map(&:to_i)] }.sort_by(&:last)
order = [1] * (N + 1)

ans = []
IPY.each do |i, p, _|
  ans[i] = format("%06d", p) + format("%06d", order[p])
  order[p] += 1
end

puts ans

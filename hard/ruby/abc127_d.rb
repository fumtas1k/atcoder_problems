# 6
# ABC127/D
# 貪欲法

N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
BC = Array.new(M) { gets.split.map(&:to_i) }.sort_by { _1[1] }.reverse

i = 0
BC.each do |b, c|
  while i < N && b > 0 && A[i] < c
    A[i] = c
    b -= 1
    i += 1
  end
end

puts A.sum

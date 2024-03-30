# 29
# AGC011/B

N = gets.to_i
A = gets.split.map(&:to_i).tally.sort
size_csum = A.reduce([0]) {|acc, a| acc << acc[-1] + a.reduce(:*) }

exclude_cnt = 0
(A.size - 1).downto(1) do |i|
  if size_csum[i] * 2 < A[i][0]
    exclude_cnt = A[0, i].sum(&:last)
    break
  end
end

puts N - exclude_cnt

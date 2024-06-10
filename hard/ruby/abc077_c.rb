# 70
# ABC077/C
# 二分探索法
# 真ん中から考える

N = gets.to_i
A = gets.split.map(&:to_i).sort.reverse
B = gets.split.map(&:to_i).sort
C = gets.split.map(&:to_i).sort

ans = B.sum do |b|
  a_idx = A.bsearch_index { _1 < b } || N
  c_dix = C.bsearch_index { _1 > b } || N
  (N - a_idx) * (N - c_dix)
end

puts ans

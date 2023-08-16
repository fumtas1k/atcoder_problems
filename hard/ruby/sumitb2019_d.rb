# 13
# SUMITB2019/D
# 二分探索
# 小さい方で考える


N = gets.to_i
S = gets.chomp.chars.map(&:to_i)

cnt = Array.new(10) { [] }
S.each_with_index do |s, i|
  cnt[s] << i
end

ans = 0
[*0 .. 9].repeated_permutation(3) do |nums|
  idx = -1
  ans += 1 if nums.all? {|i| idx = cnt[i].bsearch { _1 > idx } }
end

puts ans

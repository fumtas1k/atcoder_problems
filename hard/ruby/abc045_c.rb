# 76
# ABC045/C
# ビット全探索

S = gets.chomp
T = S.gsub("", "+")[1...-1].chars

ans = 0
(1 << (S.size - 1)).times do |bit|
  # iが偶数の場合は数値、奇数の場合は演算子なので、bit[i / 2]が1の場合は演算子を適用する
  ans += T.map.with_index { |t, i| i.even? || bit[i / 2] == 1 ? t : "" }.join.then { eval(_1) }
end

puts ans

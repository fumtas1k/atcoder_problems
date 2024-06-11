# 71
# ABC102/C
# 差の絶対値の総和は中央値を使う

N = gets.to_i
A = gets.split.map(&:to_i)
# Ai - i = Bi とする
B = A.map.with_index(1) { _1 - _2 }.sort

# マンハッタン距離の差の総和を最小化するときは中央値を使う
# 偶数個の場合、中央値候補二点の間の点であればどこでよもい
median = B[N / 2]
puts B.sum { (_1 - median).abs }

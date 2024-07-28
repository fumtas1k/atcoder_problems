# 82
# NIKKEI2019_QUAL/C
# 貪欲法

N = gets.to_i
AB = Array.new(N) { gets.split.map(&:to_i) }
# Bが全ての料理を食べたと仮定すると、得点は以下の通り
ans = - AB.sum { _1[1] }
# 高橋くんのみが料理iを食べることで ai + bi ポイントを得られる
# つまり、ai + bi の大きい順に高橋くんが料理を食べると最大得点が得られる
AB_SUM = AB.map(&:sum).sort.reverse
ans += 0.step(N - 1, 2).sum { AB_SUM[_1] }
puts ans

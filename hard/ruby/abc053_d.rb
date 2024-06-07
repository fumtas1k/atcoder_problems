# 65
# ABC053/D

N = gets.to_i
A = gets.split.map(&:to_i)
size = A.tally.size

# sizeが奇数なら余っているカードは偶数枚あるので答えは size
# 偶数ならばどこかで必ず1枚しかないカードを1回取り除く必要があるので size - 1
puts size.odd? ? size : size - 1

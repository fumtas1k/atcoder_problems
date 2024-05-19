# 54
# ABC160/E
# 貪欲法

X, Y, A, B, C = gets.split.map(&:to_i)
# 美味しさの大きい順に赤色のリンゴをX個抽出すれば、X個を超えて赤色リンゴが選ばれることはない
P = gets.split.map(&:to_i).sort.reverse[0, X]
# 美味しさの大きい順に緑色のリンゴをY個抽出すれば、Y個を超えて緑色リンゴが選ばれることはない
Q = gets.split.map(&:to_i).sort.reverse[0, Y]
R = gets.split.map(&:to_i)

S = (P + Q + R).sort.reverse

count = X + Y
ans = 0
until S.empty? || count.zero?
  deli = S.shift
  count -= 1
  ans += deli
end

puts ans

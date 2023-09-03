# 18
# ABC051/C

SX, SY, TX, TY = gets.split.map(&:to_i)
in_y = TY - SY
in_x = TX - SX

# 4つの経路を探す必要がある。ということは、startもgoalも隣接する4マス全て使用する
ans = ""
ans << "U" * in_y + "R" * in_x
ans << "D" * in_y + "L" * in_x
ans << "L" + "U" * (in_y + 1) + "R" * (in_x + 1) + "D"
ans << "R" + "D" * (in_y + 1) + "L" * (in_x + 1) + "U"

puts ans

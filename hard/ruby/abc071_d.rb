# 86
# ABC071/D
# パターン列挙

M = 1000000007
N = gets.to_i
S = Array.new(2) { gets.chomp.chars }

# パターン0: 縦に揃える
# パターン1: 横に揃える

# パターン0の場合
# ・前がパターン0の場合：2通り
# ・前がパターン1の場合：1通り
# パターン1の場合
# ・前がパターン0の場合：2通り
# ・前がパターン1の場合：3通り

ans = c = 0
pre = -1
while c < S[0].size
  cur = S[0][c] == S[1][c] ? 0 : 1
  c += S[0][c] == S[1][c] ? 1 : 2
  case pre
  when -1
    ans = cur == 0 ? 3 : 6
  when 0
    ans *= 2
  when 1
    ans *= 3 if cur == 1
  end
  pre = cur
  ans %= M
end

puts ans

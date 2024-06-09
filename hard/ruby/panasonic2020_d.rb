# 68
# 深さ優先探索

N = gets.to_i

ANS = []
def dfs(str = "", kinds = 0)
  return ANS << str if str.size == N
  kinds.times do |i|
    dfs(str + ("a".ord + i).chr, kinds)
  end
  dfs(str + ("a".ord + kinds).chr, kinds + 1)
end

dfs
puts ANS


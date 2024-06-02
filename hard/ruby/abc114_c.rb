# 59
# ABC114/C
# 全探索
# 深さ優先探索

N = gets.to_i

def dfs(n)
  return 0 if n > N
  res = 0
  res += 1 if n.digits.uniq.size == 3
  [3, 5, 7].each do |i|
    res += dfs(n * 10 + i)
  end
  res
end

puts dfs(0)

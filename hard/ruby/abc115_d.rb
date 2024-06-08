# 67
# ABC115/D
# 深さ優先探索

N, X = gets.split.map(&:to_i)

total = N.times.reduce([1]) {|acc, i| acc << 2 * acc[-1] + 3 }
patty = N.times.reduce([1]) {|acc, i| acc << 2 * acc[-1] + 1 }

dfs = -> (n, x) do
  if n.zero?
    return x <= 0 ? 0 : 1
  end
  return dfs.call(n - 1, x - 1) if x <= 1 + total[n - 1]
  patty[n - 1] + 1 + dfs.call(n - 1, x - 2 - total[n - 1])
end

puts dfs.call(N, X)

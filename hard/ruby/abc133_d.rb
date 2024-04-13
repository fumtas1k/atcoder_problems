# 33
# ABC133/D
# 周期性, 決め打ち

N = gets.to_i
A = gets.split.map(&:to_i)

precipitation = Array.new(N + 1, 0)

# 山0での降水量を0と仮定して各山の降水量を求める
# 山Nは山0と同じ山
N.times do |i|
  precipitation[i + 1] = (A[i] - precipitation[i] / 2) * 2
end

# 山0の降水量を0とした場合に山Nと矛盾する降水量の差分の半分を求める
diff = (precipitation[-1] - precipitation[0]) / 2

# 山0の降水量を増加させると偶数の山は同じ分だけ増加、奇数の山は同じ分だけ減少することになる
# 山0は偶数、山Nは奇数であるため、山Nと山0の差分の半分を偶数の山に加算、奇数の山から減産することで答えが求まる
N.times do |i|
  precipitation[i] += i.even? ? diff : - diff
end

puts precipitation[0, N].join(" ")

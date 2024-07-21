# 79
# ABC124/D
# 尺取法
# 累積和

N, K = gets.split.map(&:to_i)
S = gets.chomp.chars.map(&:to_i)

# 連続する0と1の数を数える
series = []
# 最初が1で始まるよう設定
series << 0 if S[0].zero?

l = r = 0
while l < N
  r += 1 while r < N && S[l] == S[r]
  series << r - l
  l = r
end

csum = series.reduce([0]) {|acc, i| acc << acc[-1] + i }
ans = 0
0.step(series.size - 1, 2) do |l|
  # 0の区間を最大K個入れた時の最大値
  r = [l + 2 * K, series.size - 1].min + 1
  ans = [ans, csum[r] - csum[l]].max
end

puts ans

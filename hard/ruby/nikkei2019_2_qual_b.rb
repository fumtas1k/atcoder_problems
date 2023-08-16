# 12
# NIKKEI2019-2/B

M = 998244353
N = gets.to_i
D = gets.split.map(&:to_i)
puts 0 or exit unless D[0] == 0

cnt = D.tally
cnt.default = 0
puts 0 or exit unless cnt[0] == 1

ans = 1
1.upto(cnt.keys.max) do |i|
  ans *= cnt[i - 1].pow(cnt[i], M)
  ans %= M
end
puts ans

# 75
# ABC140/D
# ランレングス圧縮
# 変化点は２箇所

N, K = gets.split.map(&:to_i)
S = gets.chomp.chars

# ランレングス圧縮
cnt = 1
1.upto(N - 1) do |i|
  next if S[i] == S[i - 1]
  cnt += 1
end
ans = N - cnt

k = K
while k > 0 && cnt > 1
  # ランレングス圧縮した文字列を1文字反転させると2箇所の幸福度が上がり、
  # ランレングス圧縮により文字数は2減る
  # ランレングス圧縮した文字数が2の場合のみ、反転による幸福度の変化は1
  diff = cnt == 2 ? 1 : 2
  ans += diff
  cnt -= diff
  k -= 1
end

puts ans

# 39
# TENKA1_2019/C
# 動的計画法

N = gets.to_i
S = gets.chomp.chars.map { _1 == "." ? 0 : 1 }
# dp[i := i番目の石][j := 0は白、1は黒] = 変更した石の数の最小値
dp = Array.new(N) { [Float::INFINITY] * 2 }
dp[0][0] = S[0]
dp[0][1] = 1 - S[0]

1.upto(N - 1) do |i|
  case S[i]
  when 0
    dp[i][0] = dp[i - 1][0]
    dp[i][1] = dp[i - 1].min + 1
  when 1
    dp[i][0] = dp[i - 1][0] + 1
    dp[i][1] = dp[i - 1].min
  end
end

puts dp[-1].min

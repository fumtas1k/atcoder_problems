# 78
# ABC097/C
# 辞書順

require "set"

S = gets.chomp
K = gets.to_i

set = Set.new
S.size.times do |i|
  # 辞書順でK番目を知りたいので、最大でもK文字までを辞書順で比較すれば十分
  1.upto(K) do |j|
    set << S[i, j]
  end
end
puts set.to_a.sort[K - 1]

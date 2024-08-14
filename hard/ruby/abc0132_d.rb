# 94
# ABC132/D
# フェルマーの小定理
# 組み合わせ

M = 10 ** 9 + 7

class Comb
  attr_reader :fact, :fact_inv, :max

  def initialize(max)
    @max = max
    @fact = [1, 1]
    @fact_inv = [1, 1]
    init
  end

  def c(n, r)
    return 0 if n < r
    fact[n] * fact_inv[r] % M * fact_inv[n - r] % M
  end

  private
  def init
    2.upto(max) do |i|
      fact[i] = fact[i - 1] * i % M
      fact_inv[i] = fact_inv[i - 1] * i.pow(M - 2, M) % M
    end
  end
end

N, K = gets.split.map(&:to_i)
comb = Comb.new(N)

# 赤いボールの間と両端 N - K + 1箇所から i 箇所を選ぶ場合の数 N - K + 1 C i
# 青いボールの間 K - 1 箇所から i - 1 箇所を選ぶ場合の数 K - 1 C i - 1
# それぞれの場合の数を掛け合わせる
ans = 1.upto(K).map do |i|
  comb.c(N - K + 1, i) * comb.c(K - 1, i - 1) % M
end

puts ans

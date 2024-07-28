# 80
# ABC090/D

N, K = gets.split.map(&:to_i)

ans = (1 .. N).sum do |b|
  # N = q * b + r
  q, r = N.divmod(b)
  [0, b - K].max * q + [0, r - K + 1].max
end

# K = 0　の場合、a = 0も含まれているので、足し過ぎた分を引く
ans -= N if K.zero?
puts ans

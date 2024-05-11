# 49

M = 10 ** 9 + 7
N, A, B = gets.split.map(&:to_i)

na = nb = 1
a_inv = b_inv = 1

B.times do |i|
  nb = nb * (N - i) % M
  na = nb if i + 1 == A
end

1.upto(B) do |i|
  b_inv = b_inv * i.pow(M - 2, M) % M
  a_inv = b_inv if i == A
end

puts (2.pow(N, M) - 1 - (na * a_inv % M) - (nb * b_inv % M)) % M


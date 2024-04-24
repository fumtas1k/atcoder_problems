# 40
# ABC108/C
# MOD

N, K = gets.split.map(&:to_i)

ans = 0
# (a + b) % K == 0, (b + c) % K == 0, (c + a) % K == 0
# つまり、 a % K == b % K == c % K
# かつ、 a % K == 0 || a % K == K / 2
(1..N).count { _1 % K == 0 }.then { ans += _1.pow(3) }
(1..N).count { _1 % K == K / 2 }.then { ans += _1.pow(3) } if K.even?

puts ans

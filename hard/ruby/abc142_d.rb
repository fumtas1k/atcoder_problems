# 11
# ABC142/D
# 最大公約数
# 素数

require "prime"

A, B = gets.split.map(&:to_i)

puts Prime.prime_division(A.gcd(B)).size + 1

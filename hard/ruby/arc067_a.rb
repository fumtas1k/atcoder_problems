# 32
# ABC052/C
# ARC067/A
# 約数, 素数

M = 10 ** 9 + 7
N = gets.to_i

cnts = Hash.new(1)
is_primes = [true] * (N + 1)
2.upto(N) do |i|
  next unless is_primes[i]
  i.step(N, i) do |j|
    is_primes[j] = false if i != j
    while j % i == 0
      j /= i
      cnts[i] += 1
    end
  end
end

puts cnts.reduce(1) {|acc, (_, v)| acc * v % M }

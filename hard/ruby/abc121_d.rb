# 88
# ABC121/D
# XOR

A, B = gets.split.map(&:to_i)

# 0からnまでのxorを求める
def xor(a)
  # (0^1) = 1, (0^1) ^ (2^3) = 0, (0^1) ^ (2^3) ^ (4^5) = 1 ...
  ret = ((a + 1) >> 1).even? ? 0 : 1
  ret ^= a if a.even?
  ret
end

# A ^ (A + 1) ^ ... ^ B = xor(A - 1) ^ xor(B)
puts xor(A - 1) ^ xor(B)


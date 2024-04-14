# 31
# ABC134/D
# 排他論理和
# sigma N / i -> O(N log N)

N = gets.to_i
A = gets.split.map(&:to_i)

# xorを使用することで繰り上がりなしで足し算をした結果を求められる
N.downto(1) do |i|
  xor = (2 * i).step(N, i).reduce(0) {|acc, j| acc ^ A[j - 1] }
  A[i - 1] ^= xor
end

ans = A.filter_map.with_index {|a, i| i + 1 if a == 1 }

puts ans.size
unless ans.empty?
  puts ans.join(" ")
end

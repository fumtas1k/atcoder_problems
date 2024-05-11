# 52

N, M = gets.split.map(&:to_i)

# x * (a1 + ... + an) = M
# aが1の時、xnが最大になる可能性がある
# xmax * N = M
MAX = M / N
MAX.downto(1) do |i|
  next unless M % i == 0
  puts i
  exit
end

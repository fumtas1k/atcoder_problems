# 10
# ABC130/D
# しゃくとり法

N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = sum = 0
i = -1
N.times do |j|
  while i < N - 1 && sum < K
    i += 1
    sum += A[i]
  end
  if sum >= K
    ans += N - i
    sum -= A[j]
  end
end

puts ans

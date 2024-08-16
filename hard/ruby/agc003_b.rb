# 99
# AGC003/B
# 貪欲法

N = gets.to_i
A = Array.new(N) { gets.to_i }

ans = 0
N.times do |i|
  ans += A[i] / 2
  A[i] %= 2
  if i + 1 < N && A[i] == 1 && A[i + 1] > 0
    ans += 1
    A[i] -= 1
    A[i + 1] -= 1
  end
end

puts ans

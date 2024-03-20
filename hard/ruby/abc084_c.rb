# 25
# ABC084/C
# 二分探索法

N = gets.to_i
CSF = Array.new(N - 1) { gets.split.map(&:to_i) }
def calc(s, f, i) = s + f * i

ans = [0] * N
(N - 1).times do |i|
  i.upto(N - 2) do |j|
    c, s, f = CSF[j]
    k = (0 .. 10 ** 6).bsearch { calc(s, f, _1) >= ans[i] }
    ans[i] = calc(s, f, k) + c
  end
end
puts ans

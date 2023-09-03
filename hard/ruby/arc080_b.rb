# 19
# ABC069/D

H, W = gets.split.map(&:to_i)
N = gets.to_i
A = gets.split.map(&:to_i)
ans = Array.new(H) { [] }

num = 0
H.times do |r|
  W.times do |c|
    # 連続で配置するため折り返しが連続するように調整
    c = W - 1 - c if r % 2 == 1
    ans[r][c] = num + 1
    A[num] -= 1
    num += 1 if A[num].zero?
  end
end

puts ans.map { _1.join(" ") }.join("\n")

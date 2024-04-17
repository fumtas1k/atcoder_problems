# 37
# DDCC2020 QUAL/C
# パターン引き継ぎ

H, W, K = gets.split.map(&:to_i)
A = Array.new(H) { [0] * W }
cnt = 1
H.times do |i|
  gets.chomp.each_char.with_index do |s, j|
    next if s == "."
    A[i][j] = cnt
    cnt += 1
  end
end

# row
H.times do |i|
  (W - 1).times do |j|
    A[i][j + 1] = A[i][j] if A[i][j + 1].zero?
  end
  (W - 1).downto(1) do |j|
    A[i][j - 1] = A[i][j] if A[i][j - 1].zero?
  end
end

# column
W.times do |j|
  (H - 1).times do |i|
    A[i + 1][j] = A[i][j] if A[i + 1][j].zero?
  end
  (H - 1).downto(1) do |i|
    A[i - 1][j] = A[i][j] if A[i - 1][j].zero?
  end
end

puts A.map { _1.join(" ") }.join("\n")

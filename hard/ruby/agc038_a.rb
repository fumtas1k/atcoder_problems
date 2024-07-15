# 77
# AGC038/A

H, W, A, B = gets.split.map(&:to_i)

# |       |   A   | W - A |
# |  B    |   0   |   1   |
# | H - B |   1   |   0   |

ans = Array.new(H) { Array.new(W, 0) }
H.times do |i|
  W.times do |j|
    next if (i < B && j < A) || (i >= B && j >= A)
    ans[i][j] = 1
  end
end

puts ans.map(&:join).join("\n")

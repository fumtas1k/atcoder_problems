# 10
# ABC054/B


N, M = gets.split.map(&:to_i)
A = Array.new(N) { gets.chomp.chars }
B = Array.new(M) { gets.chomp.chars }

def check(r, c)
  M.times do |i|
    M.times do |j|
      return false unless A[r + i][c + j] == B[i][j]
    end
  end
  true
end

0.upto(N - M) do |i|
  0.upto(N - M) do |j|
    if check(i, j)
      puts "Yes"
      exit
    end
  end
end

puts "No"

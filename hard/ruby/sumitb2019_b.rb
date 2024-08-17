# 4
# SUMITB2019/B
# 全探索

N = gets.to_i

1.upto(N) do |x|
  next unless (x * 1.08).to_i == N
  puts x
  exit
end

puts ":("

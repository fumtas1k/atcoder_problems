# 6
# PANASONIC2020/B
# パターン
# コーナーケースを考慮する

H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  puts 1
  exit
end

even = (H + 1) / 2
odd = H - even

even_col = (W + 1) / 2
odd_col = W - even_col

puts even * even_col + odd * odd_col

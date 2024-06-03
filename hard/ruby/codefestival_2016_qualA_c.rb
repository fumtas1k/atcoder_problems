# 61
# CODEFESTIVAL2016QUALA/C
# 全探索

S = gets.chomp.chars.map { _1.ord - "a".ord }
k = gets.to_i

S.each_with_index do |c, i|
  if i == S.size - 1
    S[i] = (S[i] + k) % 26
  else
    diff = (26 - c) % 26
    next if diff > k
    S[i] = 0
    k -= diff
  end
end

puts S.map { (_1 + "a".ord).chr }.join

# 23
# ABC049/C
# ARC065/C
# 後ろからマッチ

formats = %w[dream dreamer erase eraser].map(&:reverse)
S = gets.chomp.reverse

i = 0
while i < S.size
  ok = false
  formats.each do |str|
    next unless str == S[i, str.size]
    i += str.size
    ok = true
    break
  end
  next if ok
  puts "NO"
  exit
end

puts "YES"

# 23
# ABC049/C
# ARC065/C
# 後ろからマッチ

formats = %w[dream dreamer erase eraser].map(&:reverse)
S = gets.chomp.reverse

until S.empty?
  next if formats.any? { S.delete_prefix!(_1) }
  puts "NO"
  exit
end

puts "YES"

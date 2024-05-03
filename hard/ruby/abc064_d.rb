# 42
# ABC064/D
# スタック、キュー

N = gets.to_i
S = gets.chomp.chars
T = []

cnt = 0
S.each do |s|
  case s
  when "("
    cnt += 1
  when ")"
    cnt -= 1
  end
  if cnt < 0
    T.unshift("(")
    cnt += 1
  end
  T << s
end

while cnt > 0
  T << ")"
  cnt -= 1

end
puts T.join

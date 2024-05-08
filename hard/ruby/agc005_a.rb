# 46
# スタック

X = gets.chomp.chars

stack = []
X.each do |c|
  if stack.empty? || c == "S" || stack.last == "T"
    stack << c
  else
    stack.pop
  end
end

puts stack.size

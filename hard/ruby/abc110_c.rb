# 22
# ABC110/C

S = gets.chomp.chars
T = gets.chomp.chars

s_to_t = Hash.new
t_to_s = Hash.new

S.zip(T) do |s, t|
  if s_to_t[s] || t_to_s[t]
    next if s_to_t[s] == t && t_to_s[t] == s
    puts "No"
    exit
  end
  s_to_t[s] = t
  t_to_s[t] = s
end

puts "Yes"

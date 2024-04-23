# 40
# CODE_FESTIVAL_2017_QUALC/C

S = gets.chomp.chars
l = 0
r = S.size - 1

ans = 0
while l < r
  case
  when S[l] == S[r]
    l += 1
    r -= 1
  when S[l] == "x"
    l += 1
    ans += 1
  when S[r] == "x"
    r -= 1
    ans += 1
  else
    puts -1
    exit
  end
end

puts ans

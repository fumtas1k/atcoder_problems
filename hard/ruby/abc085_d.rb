# 35
# ABC085/D
# 貪欲法

N, H = gets.split.map(&:to_i)
ATTACK = []
N.times do
  a, b = gets.split.map(&:to_i)
  ATTACK << [a, 0]
  ATTACK << [b, 1]
end

ATTACK.sort_by!(&:first).reverse!

ans = 0
hitpoint = H
ATTACK.each do |attack, type|
  case type
  when 0
    cnt = (hitpoint + attack - 1) / attack
    hitpoint -= cnt * hitpoint
    ans += cnt
  when 1
    hitpoint -= attack
    ans += 1
  end

  break if hitpoint <= 0
end

puts ans

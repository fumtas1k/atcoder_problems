# 98
# CODE FESTIVAL 2017 qual A/C
# 法則性

H, W = gets.split.map(&:to_i)
A = Array.new(H) { gets.chomp.chars }
counts = A.flatten.tally

# 4 2 4
# 2 1 2
# 4 2 4

g2 = case
      when H.odd? && W.odd?
        (H / 2) + (W / 2)
      when H.even? && W.even?
        0
      when H.even?
        H / 2
      when W.even?
        W / 2
      end
g4 = ((H + 1) / 2) * ((W + 1) / 2)

if H.odd? && W.odd?
  counts.find { _2.odd? }&.then do |k, _|
    counts[k] -= 1
  end
end

g2_nums = counts.filter { _2 % 4 == 2 }.keys
while !g2_nums.empty? && g2 > 0
  k = g2_nums.shift
  counts[k] -= 2
  g2 -= 1
end

g4_nums = counts.filter { _2 % 4 == 0 }.keys
while !g4_nums.empty? && g4 > 0
  k = g4_nums.shift
  while counts[k] >= 4 && g4 > 0
    counts[k] -= 4
    g4 -= 1
  end
end

puts counts.values.sum.zero? ? 'Yes' : 'No'

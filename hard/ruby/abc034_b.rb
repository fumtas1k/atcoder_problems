# 66
# ABC034/B
# 転倒数

# BCは固定なので、1文字に置換する
S = gets.chomp.gsub("BC", "D").split(/[BC]/).reject(&:empty?)

ans = 0
S.each do |ad|
  # 転倒数の考え方. "X"より左にある"A"の数の合計が操作回数
  cnt = 0
  ad.chars.each do |x|
    case x
    when "A"
      cnt += 1
    when "D"
      ans += cnt
    end
  end
end

puts ans

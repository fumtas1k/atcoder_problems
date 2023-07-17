# 1
# ABC136/D
# パリティ(偶奇性)

S = gets.chomp.chars

ans = [0] * S.size

# ① 移動は最終的に"RL"の場所にたまる
# ② 10 ** 100は偶数
# ③ 偶数番目だった人は、偶数回目には、偶数番目にいる
# ④ "R"だけを見た場合、"L"が現れる位置とその1つ前にたまることになる
2.times do |i|
  cnt = 0
  S.each_with_index do |s, j|
    case s
    when "R"
      cnt += 1
    else
      ans[j] += cnt / 2
      ans[j - 1] += (cnt + 1) / 2
      cnt = 0
    end
  end

  # "L"と"R"を入れ替えて反転することで上記のロジックを再利用できる
  S.map! { _1 == "R" ? "L" : "R" }.reverse!
  ans.reverse!
end

puts ans.join(" ")

# 74
# CADDI2018B/D

N = gets.to_i
A = Array.new(N) { gets.to_i }

# １色のみを考えた時、自分の番で偶数個だと勝てないことがわかる
# また、最後の状態は、全ての色のりんごの数は偶数個
# つまり、自分の番で全ての色のりんごの数が偶数の場合負け
puts A.all?(&:even?) ? "second" : "first"

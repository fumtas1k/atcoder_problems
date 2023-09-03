# 21
# ABC094/D
# 組み合わせの性質

# 実際に組み合わせを計算する必要はない
# Aの最大値がnであり、rはn/2に最も近い値
N = gets.to_i
A = gets.split.map(&:to_i).sort

# nは最大値
n = A.last

# rの候補はnの半分
r_cand_idx = A.bsearch_index { _1 >= n / 2 }
# 但し、rの候補とnが同じ値を取れないため補正
r_cand_idx -= 1 if r_cand_idx == N - 1

ans = [n, A[r_cand_idx]]
unless r_cand_idx.zero?
  ans = [n, A[r_cand_idx - 1]] if (n / 2 - A[r_cand_idx]).abs > (n / 2 - A[r_cand_idx - 1]).abs
end
puts ans.join(" ")

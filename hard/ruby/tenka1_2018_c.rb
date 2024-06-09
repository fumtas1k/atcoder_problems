# 69
# パターンの考察

N = gets.to_i
A = Array.new(N) { gets.to_i }.sort.reverse

def even_ans
  # "<" 始まりでも ">" 始まりでも並び順の不等号と合計回数は変わらない
  n = N / 2 - 1
  A.map.with_index do |a, i|
    if i < n
      2 * a
    elsif i == n
      a
    elsif i == n + 1
      -a
    else
      -2 * a
    end
  end.sum
end

def odd_ans
  n = N / 2
  # ">" 始まりの場合
  ret1 = A.map.with_index do |a, i|
    if i < n - 1
      2 * a
    elsif i.between?(n - 1, n)
      a
    else
      -2 * a
    end
  end.sum

  # "<" 始まりの場合
  ret2 = A.map.with_index do |a, i|
    if i < n
      2 * a
    elsif i.between?(n, n + 1)
      -a
    else
      -2 * a
    end
  end.sum
  [ret1, ret2].max
end

puts N.even? ? even_ans : odd_ans

# 62
# ABC129/D
# BYTES

# 文字列として扱うよりもバイト列として扱った方が圧倒的に速い
HASH, DOT = "#.".bytes

H, W = gets.split.map(&:to_i)
S = Array.new(H) { gets.chomp.bytes }

# 横法方向の連続する白マスの数を計算する
def calc_rows(grid)
  grid.map do |grid_row|
    row = []
    cnt = 0
    grid_row.each do |cell|
      if cell == HASH
        cnt.times { row << cnt }
        cnt = 0
        row << 0
      else
        cnt += 1
      end
    end
    cnt.times { row << cnt }
    row
  end
end

rows = calc_rows(S)
cols = calc_rows(S.transpose).transpose

# 配列で最後にmaxをとるよりも、ループ内でmaxをとった方が速い
max_illuminated = 0
H.times do |i|
  W.times do |j|
    next if S[i][j] == HASH
    illuminated = rows[i][j] + cols[i][j] - 1
    max_illuminated = illuminated if illuminated > max_illuminated
  end
end

puts max_illuminated

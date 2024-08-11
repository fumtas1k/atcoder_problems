# 85
# ABC112/C
# 全探索

N = gets.to_i
XYH = Array.new(N) { gets.split.map(&:to_i) }

def calc(cx, cy)
  height = -1
  XYH.each do |x, y, h|
    if height == -1 && h != 0
      height = h + (cx - x).abs + (cy - y).abs
      break
    end
  end
  return height if height == -1
  XYH.each do |x, y, h|
    return -1 if [height - (cx - x).abs - (cy - y).abs, 0].max != h
  end
  height
end

101.times do |cx|
  101.times do |cy|
    height = calc(cx, cy)
    next if height == -1
    puts [cx, cy, height].join(' ')
    exit
  end
end

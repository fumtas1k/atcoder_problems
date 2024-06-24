# 72
# TENKA1_2017/C

N = gets.to_i

1.upto(3500) do |h|
  1.upto(3500) do |n|
    next if (4 * h * n - N * n - N * h).zero?
    w, mod = (N * n * h).divmod(4 * h * n - N * n - N * h)
    if mod.zero? && w > 0
      puts [h, n, w].join(" ")
      exit
    end
  end
end

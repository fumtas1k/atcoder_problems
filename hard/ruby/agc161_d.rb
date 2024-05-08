# 047

K = gets.to_i

queue = [* 1 .. 9]

(K - 1).times do
  x = queue.shift
  mod = x % 10
  queue << 10 * x + mod - 1 if mod != 0
  queue << 10 * x + mod
  queue << 10 * x + mod + 1 if mod != 9
end

puts queue.shift

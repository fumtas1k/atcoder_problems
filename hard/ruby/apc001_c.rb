# 100
# APC001/C
# 二分探索法

def ans(num)
  puts num
  STDOUT.flush
  res = gets.chomp
  exit if res == "Vacant"
  res
end

N = gets.to_i

s = ans(0)
l = 0
r = N
l_even = l.even?
while r - l > 1
  mid = (l + r) / 2
  mid_s = ans(mid)
  if (l_even == mid.even?) == (s == mid_s)
    l = mid
    s = mid_s
    l_even = mid.even?
  else
    r = mid
  end
end

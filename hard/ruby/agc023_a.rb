# 57
# 累積和

N = gets.to_i
A = gets.split.map(&:to_i)

csum = A.reduce([0]) {|acc, a| acc << acc[-1] + a }
# 連続する部分列の総和とは累積和の差で表される。
# 総和が0ということは、累積和が同じもの同士ということなので、その組み合わせ数の和が答え
puts csum.tally.values.sum { _1 * (_1 - 1) / 2 }

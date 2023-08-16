/**
 * 12
 * NIKKEI2019-2/B
 */

import kotlin.system.exitProcess

fun main() {
  val M = 998244353
  readLine()
  val D = readLine()!!.split(" ").map(String::toInt)
  if (D[0] != 0) {
    println(0)
    exitProcess(0)
  }

  val cnt = D.groupingBy { it }.eachCount().withDefault { 0 }
  if (cnt[0] != 1) {
    println(0)
    exitProcess(0)
  }

  val cntMax = cnt.keys.max()!!
  var ans = 1L
  (1 .. cntMax).forEach {
    ans *= pow(cnt.getValue(it - 1), cnt.getValue(it), M)
    ans %= M
  }

  println(ans)
}

fun pow(x: Int, n: Int, m: Int): Long {
  var base = x
  var exp = n
  var result = 1L
  while (exp > 0) {
    if (exp % 2 == 1) {
      result *= base % m
      result %= m
    }
    base *= base
    exp /= 2
  }
  return result
}

/*
 * 11
 * ABC142/D
 * 最大公約数
 * 素数
 */

fun main() {
  val (A, B) = readLine()!!.split(" ").map(String::toLong)
  val gcd = gcd(A, B)
  println(primeDivision(gcd).size + 1)
}

tailrec fun gcd(num1: Long, num2: Long): Long = if (num1 == 0L) num2 else gcd(num2 % num1, num1)

fun primeDivision(num: Long): MutableMap<Long, Int> {
  val baseToExpMap = mutableMapOf<Long, Int>()
  var tmp = num
  (2 .. Math.sqrt(num.toDouble()).toLong()).forEach { i ->
    while (tmp % i == 0L) {
      baseToExpMap[i] = (baseToExpMap[i] ?: 0) + 1
      tmp /= i
    }
  }
  if (tmp > 1) baseToExpMap[tmp] = (baseToExpMap[tmp] ?: 0) + 1
  return baseToExpMap
}

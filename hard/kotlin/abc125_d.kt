/*
 * 15
 * ABC125/D
 */

fun main() {
  readLine()!!
  val A = readLine()!!.split(" ").map(String::toLong)
  val negativeCount = A.count { it < 0 }
  val allPositiveSum = A.map { Math.abs(it) }.sum()
  if (negativeCount % 2 == 0) {
    println(allPositiveSum)
  } else {
    val min = A.map { Math.abs(it) }.min()!!
    println(allPositiveSum - 2 * min)
  }
}

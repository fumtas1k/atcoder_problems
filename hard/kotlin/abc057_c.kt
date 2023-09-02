/*
 * 14
 * ABC160/D
 */

fun main() {
  val N = readLine()!!.toLong()
  val root = Math.sqrt(N.toDouble()).toLong()
  var ans = f(1, N)
  (2L .. root).forEach {
    if (N % it != 0L) return@forEach
    ans = minOf(ans, f(it, N / it))
  }
  println(ans)
}

fun f(a: Long, b: Long) = maxOf(a.toString().length, b.toString().length)

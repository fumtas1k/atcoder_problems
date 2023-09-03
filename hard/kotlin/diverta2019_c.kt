/**
 *
 */

fun main() {
  val N = readLine()!!.toInt()
  val S = Array(N) { readLine()!! }
  var ans = S.sumBy { countAb(it) }
  var firstBlastA = 0
  var lastA = 0
  var firstB = 0
  S.forEach {
    if (it.first() == 'B' && it.last() == 'A') {
      firstBlastA++
    } else if (it.first() == 'B') {
      firstB++
    } else if (it.last() == 'A') {
      lastA++
    }
  }

  ans += if (firstB + lastA > 0) {
    firstBlastA + minOf(firstB, lastA)
  } else {
    maxOf(firstBlastA - 1, 0)
  }

  println(ans)
}

fun countAb(string: String) = (0 .. string.length - 2).count { string.substring(it, it + 2) == "AB" }

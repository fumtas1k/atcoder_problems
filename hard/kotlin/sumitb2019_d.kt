/**
 * 13
 * SUMITB2019/D
 * 二分探索
 * 小さい方で考える
 */

fun main() {
  readLine()
  val S = readLine()!!.toList().map { it - '0' }
  val cnt = Array(10) { mutableListOf<Int>() }
  S.forEachIndexed { i, s -> cnt[s].add(i) }

  var ans = 0
  repeat(10) { i ->
    repeat(10) { j ->
      repeat(10) { k ->
        var idx = -1
        val isPin = listOf(i, j, k).all {
          val itIdx = cnt[it].upperBound(idx)
          if (itIdx >= cnt[it].size) return@all false
          idx = cnt[it][itIdx]
          true
        }
        if (isPin) ans++
      }
    }
  }
  println(ans)
}

fun <T: Comparable<T>> MutableList<T>.upperBound(element: T): Int {
  return binarySearch(element, Comparator { a, b -> if (a.compareTo(b) > 0) 1 else -1 }).inv()
}

/**
 * 6
 * ABC127/D
 * 貪欲法
 */

fun main() {
  val (N, M) = readLine()!!.split(" ").map(String::toInt)
  val A = readLine()!!.split(" ").map(String::toLong).sorted().toMutableList()
  val BC = List(M) { readLine()!!.split(" ").map(String::toInt) }.sortedByDescending { it[1] }

  var i = 0
  BC.forEach {(b, c) ->
    var _b = b
    while (i < N && _b-- > 0 && A[i] < c) {
      A[i++] = c.toLong()
    }
  }
  println(A.sum())
}

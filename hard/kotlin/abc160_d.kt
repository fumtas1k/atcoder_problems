/*
 * 16
 * ABC160/D
 */

import java.io.PrintWriter

fun main() {
  val (N, X, Y) = readLine()!!.split(" ").let { Triple(it[0].toInt(), it[1].toInt().dec(), it[2].toInt().dec()) }
  val ans = IntArray(N - 1) { 0 }

  repeat(N) { i ->
    (i + 1 .. N - 1).forEach { j ->
      val cnt = minOf(j - i, Math.abs(X - i) + 1 + Math.abs(j - Y))
      ans[cnt - 1]++
    }
  }

  val pw = PrintWriter(System.out, false)
  ans.forEach(pw::println)
  pw.flush()
  pw.close()
}

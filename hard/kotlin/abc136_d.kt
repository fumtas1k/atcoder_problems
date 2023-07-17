/**
 * 1
 * ABC136/D
 * パリティ(偶奇性)
 */

fun main() {
  var S = readLine()!!.toList()
  val ans = MutableList(S.size) { 0 }

  // ① 移動は最終的に"RL"の場所にたまる
  // ② 10 ** 100は偶数
  // ③ 偶数番目だった人は、偶数回目には、偶数番目にいる
  // ④ "R"だけを見た場合、"L"が現れる位置とその1つ前にたまることになる

  repeat(2) {
    var cnt = 0
    S.forEachIndexed { i, s ->
      when (s) {
        'R' -> cnt++
        else -> {
          ans[i] += cnt / 2
          ans[i - 1] += (cnt + 1) / 2
          cnt = 0
        }
      }
    }

    // "L"と"R"を入れ替えて反転することで上記のロジックを再利用できる
    S = S.reversed().map { if (it == 'R') 'L' else 'R' }
    ans.reverse()
  }

  println(ans.joinToString(" "))
}

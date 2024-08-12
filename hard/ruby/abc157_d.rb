# 87
# ABC157/D
# Union Find

class DSU
  attr_reader :parent_or_size
  def initialize(n)
    @parent_or_size = Array.new(n, -1)
  end

  def root(u)
    return u if parent_or_size[u] < 0
    parent_or_size[u] = root(parent_or_size[u])
  end
  alias leader root

  def unite(u, v)
    ru, rv = root(u), root(v)
    return ru if ru == rv
    ru, rv = rv, ru if size(ru) < size(rv)
    parent_or_size[ru] += parent_or_size[rv]
    parent_or_size[rv] = ru
  end
  alias merge unite

  def same?(u, v) = root(u) == root(v)

  def size(u) = - parent_or_size[root(u)]
end

N, M, K = gets.split.map(&:to_i)
FRIENDS_COUNT = Array.new(N, 0)
BLOCKS = Array.new(N) { [] }
dsu = DSU.new(N)
M.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  FRIENDS_COUNT[a] += 1
  FRIENDS_COUNT[b] += 1
  dsu.merge(a, b)
end
K.times do
  c, d = gets.split.map(&:to_i).map(&:pred)
  BLOCKS[c] << d
  BLOCKS[d] << c
end

ans = N.times.map do |i|
  dsu.size(i) - FRIENDS_COUNT[i] - 1 - BLOCKS[i].count { dsu.same?(i, _1) }
end

puts ans.join(" ")

# 64
# ABC075/C
# 二重辺連結成分分解
# Low Link

class LowLink
  attr_reader :edges, :size

  def initialize(n)
    @size = n
    @edges = Array.new(@size) { [] }
  end

  def add(from, to)
    edges[from] << to
    edges[to] << from
  end

  def count_bridge
    count = current_ord = 0
    ord = []
    low = []
    ids = []

    dfs = -> (from, pre = -1) do
      ord[from] = low[from] = current_ord
      current_ord += 1
      edges[from].each do |to|
        next if to == pre
        if ord[to]
          low[from] = [low[from], ord[to]].min
        else
          dfs.call(to, from)
          low[from] = [low[from], low[to]].min
        end
        count += 1 if ord[from] < low[to]
      end
    end
    dfs.call(0)
    count
  end
end

N, M = gets.split.map(&:to_i)
low_link = LowLink.new(N)

M.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  low_link.add(a, b)
end

puts low_link.count_bridge

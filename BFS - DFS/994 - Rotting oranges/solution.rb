FRESH, ROTTEN = 1, 2

def find_rotten_fresh(grid)
  rotten, fresh = [], 0
  grid.size.times do |i|
    grid[0].size.times do |j|
      rotten.push [i, j, 0] if grid[i][j] == ROTTEN
      fresh += 1 if grid[i][j] == FRESH
    end
  end
  [rotten, fresh]
end

# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
  depth = 0
  rotten, fresh = find_rotten_fresh(grid)
  height, width = grid.size, grid[0].size
  directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]
  max_depth = -1

  until rotten.empty? do
    i, j, depth = rotten.shift
    max_depth = [max_depth, depth].max

    directions.each do |x, y|
      dx = i + x
      dy = j + y
      if dx.between?(0, height - 1) && dy.between?(0, width - 1) && grid[dx][dy] == FRESH
        grid[dx][dy] = ROTTEN
        rotten.push [dx, dy, depth + 1]
        fresh -= 1
      end
    end
  end

  return depth if fresh == 0
  -1
end

grid = [[2,1,1],[1,1,0],[0,1,1]]
p oranges_rotting grid

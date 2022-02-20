require 'set'

# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix(mat)
  queue = []
  visited = Set.new
  directions = [[1, 0], [0, 1], [-1, 0], [0, -1]]

  mat.size.times do |i|
    mat[0].size.times do |j|
      if mat[i][j] == 0
        visited.add([i, j])
        queue.push([i, j])
      end
    end
  end

  until queue.empty?
    queue.size.times do
      i, j = queue.shift
      directions.each { |x, y|
        dx = i + x
        dy = j + y
        if dx >= 0 && dy >= 0 && dx < mat.size && dy < mat[0].size && !visited.include?([dx, dy])
          visited.add([dx, dy])
          queue.push([dx, dy])
          mat[dx][dy] = mat[i][j] + 1
        end
      }
    end
  end

  mat
end

mat = [[0,0,0],[0,1,0],[1,1,1]]
p update_matrix mat
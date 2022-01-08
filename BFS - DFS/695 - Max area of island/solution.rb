require 'set'

def area(row, column, grid)
  if row < 0 || column < 0 || row > grid.length - 1 || column > grid[0].length - 1 || grid[row][column] == 0
    return 0
  end

  grid[row][column] = 0
  1 + area(row + 1, column, grid) + area(row - 1, column, grid) + area(row, column - 1, grid) + area(row, column + 1, grid)
end

# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
  max_area = 0

  (0..grid.length).each { |row|
    (0..grid[0].length).each { |column|
      max_area = [max_area, area(row, column, grid)].max
    }
  }
  max_area
end

a = [[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]
p max_area_of_island(a)
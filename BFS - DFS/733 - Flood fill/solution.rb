
def fill(image, sr, sc, color, new_color)
  return if (sr < 0 || sc < 0 || sr >= image.length || sc >= image[0].length || image[sr][sc] != color)

  image[sr][sc] = new_color
  fill(image, sr + 1, sc, color, new_color)
  fill(image, sr - 1, sc, color, new_color)
  fill(image, sr, sc + 1, color, new_color)
  fill(image, sr, sc - 1, color, new_color)
end

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  return image if image[sr][sc] == new_color
  fill(image, sr, sc, image[sr][sc], new_color)
  image
end

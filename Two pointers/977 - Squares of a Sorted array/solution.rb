# Using 2 pointers here
# First one, should point to the last negative number,
# Second one, to the 1st positive number
# @param {Integer[]} nums
# @return {Integer[]}

def sorted_squares(nums)
  len = nums.length
  pos_pointer = 0
  sorted = []

  pos_pointer += 1 while (pos_pointer < len) && (nums[pos_pointer]).negative?
  neg_pointer = pos_pointer - 1

  while (neg_pointer >= 0) && (pos_pointer < len)
    neg_square = nums[neg_pointer] * nums[neg_pointer]
    pos_square = nums[pos_pointer] * nums[pos_pointer]

    if neg_square < pos_square
      sorted.push(neg_square)
      neg_pointer -= 1
    else
      sorted.push(pos_square)
      pos_pointer += 1
    end
  end

  while neg_pointer >= 0
    neg_square = nums[neg_pointer] * nums[neg_pointer]
    sorted.push(neg_square)
    neg_pointer -= 1
  end

  while pos_pointer < len
    pos_square = nums[pos_pointer] * nums[pos_pointer]
    sorted.push(pos_square)
    pos_pointer += 1
  end

  sorted
end

# This code shows the 2 pointers algo concept,
# but in the particular case, the most effective would be
def sorted_squares_alter(nums)
  i = 0
  while i < nums.length
    nums[i] = nums[i] * nums[i]
    i += 1
  end

  nums.sort
end

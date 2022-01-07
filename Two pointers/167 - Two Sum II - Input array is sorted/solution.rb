# Array starts with index == 1 by task description
# Space complexity - O(1)
# Time complexity - O(n)

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  start_ptr, end_ptr = 0, numbers.length - 1

  while start_ptr < end_ptr
    sum = numbers[start_ptr] + numbers[end_ptr]
    if sum > target
      end_ptr -= 1
    elsif sum < target
      start_ptr += 1
    else
      return [start_ptr + 1, end_ptr + 1]
    end
  end
end

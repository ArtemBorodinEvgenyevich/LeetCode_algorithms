# Space complexity - O(1)
# Time complexity - O(n)

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  last_non_zero_at = 0
  current_at = 0

  while current_at < nums.length
    if nums[current_at] != 0
      nums[last_non_zero_at], nums[current_at] = nums[current_at], nums[last_non_zero_at]
      last_non_zero_at += 1
    end
    current_at += 1
  end
end
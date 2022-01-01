# Solution O(1) space complexity alg implementation
# Should be applicable to any lang
# Helper function for reverse
def reverse!(nums, left_ptr, right_ptr)
  while left_ptr < right_ptr
    nums[left_ptr], nums[right_ptr] = nums[right_ptr], nums[left_ptr]
    left_ptr += 1
    right_ptr -= 1
  end
end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k = k % nums.length
  left_ptr = 0
  right_ptr = nums.length - 1
  reverse!(nums, left_ptr, right_ptr)

  left_ptr = 0
  right_ptr = k - 1
  reverse!(nums, left_ptr, right_ptr)

  left_ptr = k
  right_ptr = nums.length - 1
  reverse!(nums, left_ptr, right_ptr)
end

# Completely Ruby way :), fast enough though
def rotate2(nums, k)
  nums.rotate!(-k)
end

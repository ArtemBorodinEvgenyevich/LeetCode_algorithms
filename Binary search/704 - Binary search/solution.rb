# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  middle = nums.length / 2
  left = 0
  right = nums.length - 1

  while left <= right
    return nums.index(target) if target == nums[middle]

    if nums[middle] < target
      left = middle + 1
    else
      right = middle - 1
    end

    middle = (left + right) / 2
  end
  -1
end

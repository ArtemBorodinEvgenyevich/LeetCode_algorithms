# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  first = 0
  last = nums.length - 1
  middle = nums.length / 2

  while first <= middle
    return nums.index(target) if nums[middle] == target

    if nums[middle] < target
      first = middle + 1
    else
      last = middle - 1
    end

    middle = first + (last - first) / 2
  end

  [first + 1, middle + 1].min
end


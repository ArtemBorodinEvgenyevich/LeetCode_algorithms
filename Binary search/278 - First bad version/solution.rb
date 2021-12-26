# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  # using binary search
  first = 0
  last = n

  while first < last
    # solving overflow bug
    middle = first + (last - first) / 2

    if is_bad_version(middle)
      last = middle
    else
      first = middle + 1
    end
  end

  first
end

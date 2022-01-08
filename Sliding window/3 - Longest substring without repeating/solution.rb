require 'set'

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  start_ptr = 0
  end_ptr = 0
  max_str = 0
  hash_set = Set[]

  while end_ptr < s.length
    if hash_set.add?(s[end_ptr])
      end_ptr += 1
      max_str = [hash_set.length, max_str].max
    else
      hash_set.delete?(s[start_ptr])
      start_ptr += 1
    end
  end

  max_str
end

a = "abcabcbb"
p length_of_longest_substring(a)
# Time complexity: 0(l1 + (l2 - l1))
# Space complexity: O(1)

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  s1_map = Hash.new{|h,k| h[k] = 0 }
  s2_map = Hash.new{|h,k| h[k] = 0 }
  s1_len = s1.length
  s2_len = s2.length

  s1.chars.each do |ch|
    s1_map[ch] += 1
  end

  # sliding window
  (0...s1_len).each do |i|
    s2_map[s2[i]] += 1
  end
  return true if s1_map == s2_map

  # window update
  (s1_len...s2_len).each do |i|
    s2_map[s2[i]] += 1
    s2_map[s2[i-s1_len]] -= 1
    s2_map.delete(s2[i-s1_len]) if s2_map[s2[i-s1_len]] == 0
    return true if s1_map == s2_map
  end
  false
end

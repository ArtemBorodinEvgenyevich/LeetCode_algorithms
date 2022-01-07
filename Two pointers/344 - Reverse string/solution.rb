# Fastest solution on ruby would by use simple
# def reverse_string(s)
#   s.reverse!
# end

# Which will give us
# Space complexity - O(1)
# Time complexity - O(n)

# But in general, task solution should be like this or smth
# Complexity is the same

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  start_ptr, end_ptr = 0, s.length - 1

  while start_ptr < end_ptr
    s[start_ptr], s[end_ptr] = s[end_ptr], s[start_ptr]
    start_ptr += 1
    end_ptr -= 1
  end
end

a = ["h","e","l","l","o"]
reverse_string(a)
p a
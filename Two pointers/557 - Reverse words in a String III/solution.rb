# Didn't find any better/similar solution with 2 pointers
# Just using a ruby way here :(

# @param {String} s
# @return {String}
def reverse_words(s)
  # todo: create solution using 2 pointers
  s.split.map(&:reverse).join(' ')
end


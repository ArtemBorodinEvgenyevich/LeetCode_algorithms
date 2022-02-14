# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
  return root unless root

  left_node = root
  while left_node.left != nil
    head = left_node
    while head != nil
      head.left.next = head.right
      if head.next != nil
        head.right.next = head.next.left
      end
      head = head.next
    end
    left_node = left_node.left
  end

  root
end

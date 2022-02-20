# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if head.nil?

  prev, curr = nil, head
  while curr.next
    tmp = curr.next
    curr.next = prev
    prev = curr
    curr = tmp
  end
  curr.next = prev

  curr
end

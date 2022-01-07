# Time complexity - O(n)
# Space complexity - O(1)
# Definition for singly-linked list.
#
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  fast_ptr = head
  slow_ptr = head

  while fast_ptr&.next
    slow_ptr = slow_ptr.next
    fast_ptr = fast_ptr.next.next
  end

  slow_ptr
end
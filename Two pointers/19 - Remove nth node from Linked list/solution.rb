# Time complexity - O(n)
# Space complexity - O(1)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  fast_ptr = slow_ptr = head

  n.times { fast_ptr = fast_ptr.next }

  return head.next unless fast_ptr

  while fast_ptr.next
    fast_ptr = fast_ptr.next
    slow_ptr = slow_ptr.next
  end

  slow_ptr.next = slow_ptr.next.next
  head
end

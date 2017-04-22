# Definition for singly-linked list.
class ListNode(object):
  def __init__(self, x):
    self.val = x
    self.next = None

class Solution(object):
  def hasCycle(self, head):
    if not head or not head.next:
      return False

    fast_head = head.next

    while True:
      if not head or not fast_head:
        return False

      if fast_head == head:
        return True

      head = head.next
      fast_head = fast_head.next

      if not fast_head:
        return False

      fast_head = fast_head.next

    return False


n1 = ListNode(1)
n2 = ListNode(2)
n1.next = n2

assert not Solution().hasCycle(n1)

n3 = ListNode(3)
n2.next = n3
n3.next = n1

assert Solution().hasCycle(n1)

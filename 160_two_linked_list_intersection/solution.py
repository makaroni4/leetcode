# Definition for singly-linked list.
class ListNode(object):
  def __init__(self, x):
    self.val = x
    self.next = None

class Solution(object):
  def getIntersectionNode(self, headA, headB):
    if not headA or not headB:
      return None

    l1 = 0
    node = headA
    while node:
      l1 += 1
      node = node.next

    l2 = 0
    node = headB
    while node:
      l2 += 1
      node = node.next

    diff_l = l2 - l1

    node_a = headA
    node_b = headB

    if diff_l > 0:
      i = 0
      while i < diff_l:
        node_b = node_b.next
        i += 1
    elif diff_l < 0:
      i = 0
      while i > diff_l:
        node_a = node_a.next
        i -= 1

    while node_a and node_a != node_b:
      node_a = node_a.next
      node_b = node_b.next

    return node_a

n1 = ListNode(1)
n2 = ListNode(2)
n3 = ListNode(3)
n4 = ListNode(4)
n5 = ListNode(5)
n6 = ListNode(6)
n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5
n5.next = n6

n21 = ListNode(21)
n22 = ListNode(22)
n23 = ListNode(23)
n24 = ListNode(24)
n25 = ListNode(25)
n21.next = n22
n22.next = n23
n23.next = n24
n24.next = n25
n25.next = n4

assert Solution().getIntersectionNode(n1, n21)

n1 = ListNode(1)
n2 = ListNode(2)
n3 = ListNode(3)
n1.next = n2
n2.next = n3

n21 = ListNode(21)
n22 = ListNode(22)
n23 = ListNode(23)
n21.next = n22
n22.next = n23

assert Solution().getIntersectionNode(n1, n21) == None

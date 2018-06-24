require_relative "../shared/linked_list_helpers"

def merge_two_lists(l1, l2)
  return l2 if l1.nil?
  return l1 if l2.nil?

  if l1.val < l2.val
    start_node = ListNode.new(l1.val)
    l1 = l1.next
  else
    start_node = ListNode.new(l2.val)
    l2 = l2.next
  end

  output = start_node

  while l1 && l2 do
    while l1 && l2 && l1.val <= l2.val do
      start_node.next = ListNode.new(l1.val)
      start_node = start_node.next
      l1 = l1.next
    end

    while l1 && l2 && l2.val <= l1.val do
      start_node.next = ListNode.new(l2.val)
      start_node = start_node.next
      l2 = l2.next
    end
  end

  start_node.next = l1 if l1
  start_node.next = l2 if l2

  output
end

l1 = array_to_linked_list([1, 2, 4, 5])
l2 = array_to_linked_list([1, 3, 4])

puts "INCORRECT" unless linked_list_to_array(merge_two_lists(l1, l2)) == [1, 1, 2, 3, 4, 4, 5]

l1 = array_to_linked_list([-9, 3])
l2 = array_to_linked_list([5, 7])

puts "INCORRECT" unless linked_list_to_array(merge_two_lists(l1, l2)) == [-9, 3, 5, 7]

require_relative "../shared/linked_list_helpers"

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return nil if head.nil?
  return head if head.next.nil?

  odd_node = head
  even_node = head.next
  even_head = even_node

  i = 2
  node = even_node

  while node = node.next do
    i += 1

    if i % 2 == 0
      even_node.next = node
      even_node = node
    else
      odd_node.next = node
      odd_node = node
    end
  end

  even_node.next = nil
  odd_node.next = even_head

  head
end

def array_to_linked_list(array)
  return if array.empty?

  root_node = ListNode.new(array[0])
  current_node = root_node

  array[1..-1].each do |val|
    node = ListNode.new(val)
    current_node.next = node
    current_node = node
  end

  root_node
end

def linked_list_to_array(node)
  return if node.nil?

  array = [node.val]

  while node = node.next do
    array << node.val
  end

  array
end

puts "INCORRECT" unless linked_list_to_array(odd_even_list(array_to_linked_list([]))) == nil
puts "INCORRECT" unless linked_list_to_array(odd_even_list(array_to_linked_list([1, 2, 3, 4, 5]))) == [1, 3, 5, 2, 4]
puts "INCORRECT" unless linked_list_to_array(odd_even_list(array_to_linked_list([1, 2, 3, 4, 5, 6]))) == [1, 3, 5, 2, 4, 6]

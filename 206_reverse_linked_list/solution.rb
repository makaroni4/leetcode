# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end
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


# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return if head.nil?
  return head if head.next.nil?

  tail = ListNode.new(head.val)

  current_node = head.next
  next_node = current_node.next
  current_node.next = tail

  return current_node if next_node.nil?

  while next_node do
    new_next_node = next_node.next
    next_node.next = current_node

    break unless new_next_node

    current_node = next_node
    next_node = new_next_node
  end

  next_node
end

puts "INCORRECT" unless linked_list_to_array(reverse_list(array_to_linked_list([]))) == nil
puts "INCORRECT" unless linked_list_to_array(reverse_list(array_to_linked_list([1]))) == [1]
puts "INCORRECT" unless linked_list_to_array(reverse_list(array_to_linked_list([1, 2]))) == [2, 1]
puts "INCORRECT" unless linked_list_to_array(reverse_list(array_to_linked_list([1, 2, 3]))) == [3, 2, 1]

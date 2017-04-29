# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  node = head
  n_node = head
  n.times { n_node = n_node.next }

  return head.next if n_node.nil?

  until n_node.next.nil? do
    node = node.next
    n_node = n_node.next
  end

  node.next = node.next.nil? ? nil : node.next.next

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

puts "INCORRECT" unless linked_list_to_array(remove_nth_from_end(array_to_linked_list([1]), 1)) == nil
puts "INCORRECT" unless linked_list_to_array(remove_nth_from_end(array_to_linked_list([1, 2]), 1)) == [1]
puts "INCORRECT" unless linked_list_to_array(remove_nth_from_end(array_to_linked_list([1, 2]), 2)) == [2]
puts "INCORRECT" unless linked_list_to_array(remove_nth_from_end(array_to_linked_list([1, 2, 3]), 1)) == [1, 2]
puts "INCORRECT" unless linked_list_to_array(remove_nth_from_end(array_to_linked_list([1, 2, 3]), 2)) == [1, 3]
puts "INCORRECT" unless linked_list_to_array(remove_nth_from_end(array_to_linked_list([1, 2, 3]), 3)) == [2, 3]
puts "INCORRECT" unless linked_list_to_array(remove_nth_from_end(array_to_linked_list([1, 2, 3, 4, 5]), 2)) == [1, 2, 3, 5]

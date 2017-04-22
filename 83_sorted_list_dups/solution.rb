require "set"

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
def delete_duplicates(head)
  return if head.nil?

  seen_vals = Set.new

  head_node = head
  current_node = head

  seen_vals << head.val

  while current_node = current_node.next do
    next if seen_vals.member?(current_node.val)

    seen_vals << current_node.val

    head_node.next = current_node

    head_node = current_node
  end

  head_node.next = nil

  head
end

puts "INCORRECT" unless linked_list_to_array(delete_duplicates(array_to_linked_list([]))) == nil
puts "INCORRECT" unless linked_list_to_array(delete_duplicates(array_to_linked_list([1, 1, 2]))) == [1, 2]
puts "INCORRECT" unless linked_list_to_array(delete_duplicates(array_to_linked_list([1, 1, 2, 3, 3]))) == [1, 2, 3]

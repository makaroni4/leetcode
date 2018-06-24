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

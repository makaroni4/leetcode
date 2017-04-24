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

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  return if node.nil?

  while next_node = node.next do
    node.val = next_node.val

    node.next = next_node.next.nil? ? nil : next_node

    node = next_node
  end
end

head = array_to_linked_list([])

puts "INCORRECT" unless delete_node(head) == nil

head = array_to_linked_list([1, 2, 3, 4, 5])
node = head.next.next

delete_node(node)

puts "INCORRECT" unless linked_list_to_array(head) == [1, 2, 4, 5]

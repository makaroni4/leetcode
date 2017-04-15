# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = l1.val + l2.val
  output = ListNode.new(sum % 10)
  extra_val = sum / 10
  current_node = output

  while !l1.nil? || !l2.nil? do
    l1 = l1.next unless l1.nil?
    l2 = l2.next unless l2.nil?

    next if l1.nil? && l2.nil? && extra_val == 0

    sum = extra_val

    sum += l1.val unless l1.nil?
    sum += l2.val unless l2.nil?

    next_node = ListNode.new(sum % 10)
    current_node.next = next_node
    current_node = next_node

    extra_val = sum / 10
  end

  output
end

def print_list(l)
  output = l.val.to_s

  until l.nil? do
    l = l.next

    output << l.val.to_s unless l.nil?
  end

  output
end






### Test case 1 ###
n1 = ListNode.new(2)
n2 = ListNode.new(4)
n3 = ListNode.new(3)
n1.next = n2
n2.next = n3

k1 = ListNode.new(5)
k2 = ListNode.new(6)
k3 = ListNode.new(4)
k1.next = k2
k2.next = k3

puts "INCORRECT" unless print_list(n1) == "243"
puts "INCORRECT" unless print_list(k1) == "564"

puts "INCORRECT" unless print_list(add_two_numbers(n1, k1)) == "708"

### Test case 2 ###
n1 = ListNode.new(5)

k1 = ListNode.new(5)

puts "INCORRECT" unless print_list(n1) == "5"
puts "INCORRECT" unless print_list(k1) == "5"

puts "INCORRECT" unless print_list(add_two_numbers(n1, k1)) == "01"

### Test case 3 ###
n1 = ListNode.new(1)

k1 = ListNode.new(9)
k2 = ListNode.new(9)
k1.next = k2

puts "INCORRECT" unless print_list(n1) == "1"
puts "INCORRECT" unless print_list(k1) == "99"

puts "INCORRECT" unless print_list(add_two_numbers(n1, k1)) == "001"

### Test case 4 ###
n1 = ListNode.new(0)

k1 = ListNode.new(9)
k2 = ListNode.new(1)
k3 = ListNode.new(6)
k1.next = k2
k2.next = k3

puts "INCORRECT" unless print_list(n1) == "0"
puts "INCORRECT" unless print_list(k1) == "916"

puts "INCORRECT" unless print_list(add_two_numbers(n1, k1)) == "916"

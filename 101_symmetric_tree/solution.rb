# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
      @val = val
      @left, @right = nil, nil
  end
end

def array_to_tree(a)
  return if a.nil?

  root = TreeNode.new(a[0])
  i = 0

  node_list = [root]

  while node_list.any? do
    element = node_list.shift

    break if 2 * i + 1 >= a.size

    element.left = TreeNode.new(a[2*i + 1])
    node_list.push(element.left)

    break if 2 * i + 2 >= a.size

    element.right = TreeNode.new(a[2*i + 2])
    node_list.push(element.right)

    i += 1
  end

  root
end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil? || root.val.nil?

  node_list = [root]

  left_nodes = [root.left]
  right_nodes = [root.right]

  while left_nodes.any? && right_nodes.any? do
    left_node = left_nodes.shift
    right_node = right_nodes.shift

    return false unless (left_node && left_node.val) == (right_node && right_node.val)

    if left_node
      left_nodes.push(left_node.left)
      left_nodes.push(left_node.right)
    end

    if right_node
      right_nodes.push(right_node.right)
      right_nodes.push(right_node.left)
    end
  end

  return left_nodes.count(nil) == right_nodes.count(nil)
end

puts "INCORRECT 0" unless is_symmetric(array_to_tree(nil))
puts "INCORRECT 1" unless is_symmetric(array_to_tree([]))
puts "INCORRECT 2" unless is_symmetric(array_to_tree([1, 2, 2, 3, 4, 4, 3]))
puts "INCORRECT 3" if is_symmetric(array_to_tree([1, 2, 2, nil, 3, nil, 3]))
puts "INCORRECT 4" if is_symmetric(array_to_tree([1, 2, 2, nil, 3, 3]))

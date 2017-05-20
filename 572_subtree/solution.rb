# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
      @val = val
      @left, @right = nil, nil
  end
end

def are_same_nodes(s, t)
  return true if s.nil? && t.nil?
  return false if s.nil? || t.nil?
  return false if s.val != t.val

  return are_same_nodes(s.left, t.left) && are_same_nodes(s.right, t.right)
end

def is_subtree(s, t)
  return false if s.nil?
  return true if are_same_nodes(s, t)

  return is_subtree(s.left, t) || is_subtree(s.right, t)
end

def array_to_tree(a)
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

def tree_to_array(root)
  array = [root.val]

  node_list = [root]

  while node_list.any? do

    element = node_list.shift

    if element
      if element.right
        array.push(element.left && element.left.val)
        array.push(element.right.val)
      end

      node_list.push(element.left)
      node_list.push(element.right)
    end
  end

  array
end

puts "INCORRECT" unless is_subtree(array_to_tree([3, 4, 5, 1, 2]), array_to_tree([4, 1, 2]))
puts "INCORRECT" if is_subtree(array_to_tree([3, 4, 5, 1, 2, nil, nil, nil, 0]), array_to_tree([4, 1, 2]))
puts "INCORRECT" if is_subtree(array_to_tree([3, 4, 5, 1, 2]), array_to_tree([4, 2, 1]))

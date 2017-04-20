# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
      @val = val
      @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  node_list = [root]

  while node_list.any? do
    element = node_list.shift

    if element
      element.left, element.right = element.right, element.left
      node_list.push(element.left)
      node_list.push(element.right)
    end
  end

  root
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

puts "INCORRECT" unless tree_to_array(invert_tree(array_to_tree([4,7,2,9,6,3,1]))) == [4,2,7,1,3,6,9]
puts "INCORRECT" unless tree_to_array(invert_tree(array_to_tree([1, 2]))) == [1, nil, 2]
puts "INCORRECT" unless tree_to_array(invert_tree(array_to_tree([1, nil, 2]))) == [1, 2, nil]
puts "INCORRECT" unless tree_to_array(invert_tree(array_to_tree([2, 3, nil, 1]))) == [2, nil, 3, nil, 1]

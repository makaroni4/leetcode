# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def tilt(node)
  return [0, 0] if node.nil?

  left = tilt(node.left)
  right = tilt(node.right)

  return [left[0] + right[0] + node.val, (left[0] - right[0]).abs + left[1] + right[1]]
end

def find_tilt(root)
  tilt(root)[1]
end

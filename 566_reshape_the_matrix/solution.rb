# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  return nums if nums.flatten.size != r * c

  output = nums.flatten.each_slice(c).to_a
end

puts "INCORRECT" unless matrix_reshape([[1, 2], [3, 4]], 1, 4) == [1, 2, 3, 4]
puts "INCORRECT" unless matrix_reshape([[1, 2], [3, 4]], 2, 4) == [[1, 2], [3, 4]]
puts "INCORRECT" unless matrix_reshape([[1, 2, 3], [4, 5, 6]], 3, 2) == [[1, 2], [3, 4], [5, 6]]

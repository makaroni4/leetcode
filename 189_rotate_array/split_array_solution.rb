def rotate(nums, k)
  k = k % nums.size

  nums[0..-1] = nums[(nums.size - k)..-1] + nums[0..(nums.size - k - 1)]
end

nums = [1, 2, 3, 4, 5, 6, 7]
rotate(nums, 3)

puts "INCORRECT 1" unless nums == [5, 6, 7, 1, 2, 3, 4]

nums = [1, 2, 3, 4, 5, 6, 7]
rotate(nums, 0)

puts "INCORRECT 2" unless nums == [1, 2, 3, 4, 5, 6, 7]

nums = [1, 2]
rotate(nums, 1)

puts "INCORRECT 3" unless nums == [2, 1]


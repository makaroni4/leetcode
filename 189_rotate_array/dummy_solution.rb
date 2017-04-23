def rotate(nums, k)
  k.times do
    nums.unshift(nums.pop)
  end
end

nums = [1, 2, 3, 4, 5, 6, 7]
rotate(nums, 3)

puts "INCORRECT" unless nums == [5, 6, 7, 1, 2, 3, 4]

nums = [1, 2, 3, 4, 5, 6, 7]
rotate(nums, 0)

puts "INCORRECT" unless nums == [1, 2, 3, 4, 5, 6, 7]

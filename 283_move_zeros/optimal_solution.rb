# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  last_non_zero = 0
  i = 0

  while i < nums.size do
    unless nums[i] == 0
      nums[last_non_zero], nums[i] = nums[i], nums[last_non_zero]
      last_non_zero += 1
    end

    i += 1
  end
end

nums = [0, 1, 0, 3, 12]
move_zeroes(nums)

puts "INCORRECT" unless nums == [1, 3, 12, 0, 0]

nums = [1, 2, 3, 4, 5]
move_zeroes(nums)

puts "INCORRECT" unless nums == [1, 2, 3, 4, 5]

nums = []
move_zeroes(nums)

puts "INCORRECT" unless nums == []

nums = [0, 0, 1]
move_zeroes(nums)

puts "INCORRECT" unless nums == [1, 0, 0]

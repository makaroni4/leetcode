# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  moved_zeroes = 0
  i = 0

  while i < nums.size - 1 - moved_zeroes do
    if nums[i] == 0
      j = i

      while j < nums.size - 1 - moved_zeroes do
        nums[j], nums[j + 1] = nums[j + 1], nums[j]

        j += 1
      end

      moved_zeroes += 1
      i -= 1
    else
      i += 1
    end
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

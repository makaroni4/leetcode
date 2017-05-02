# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  i = 0
  curr_jump = nums.first

  z = 0

  while i < nums.size && curr_jump > 0 do
    j = 1
    next_jump = curr_jump

    while j < curr_jump && i + j < nums.size do
      next_jump = j if i + j + nums[i + j] > i + curr_jump

      j += 1
    end

    i += next_jump

    curr_jump = nums[i]
  end

  i >= nums.size - 1
end

puts "INCORRECT" unless can_jump([2, 3, 1, 1, 4])
puts "INCORRECT" if can_jump([3, 2, 1, 0, 4])
puts "INCORRECT" unless can_jump([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
puts "INCORRECT" unless can_jump([5])
puts "INCORRECT" unless can_jump([1, 1, 2, 2, 0, 1, 1])

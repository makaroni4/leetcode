# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  j = nums.size - 1
  while j > 0 && nums[j - 1] >= nums[j] do
    j -= 1
  end

  if j < 1
    nums.reverse!
    return
  end

  i = nums.size - 1

  while nums[i] <= nums[j - 1] do
    i -= 1
  end

  nums[j - 1], nums[i] = nums[i], nums[j - 1]

  nums[j..-1] = nums[j..-1].reverse
end

nums = [1, 2, 3]
next_permutation(nums)
puts "INCORRECT 1" unless nums == [1, 3, 2]

nums = [3, 2, 1]
next_permutation(nums)
puts "INCORRECT 2" unless nums == [1, 2, 3]

nums = [1, 1, 5]
next_permutation(nums)
puts "INCORRECT 3" unless nums == [1, 5, 1]

nums = [0, 1, 2, 5, 3, 3, 0]
next_permutation(nums)
puts "INCORRECT 4" unless nums == [0, 1, 3, 0, 2, 3, 5]

nums = [1, 5, 1]
next_permutation(nums)
puts "INCORRECT 5" unless nums == [5, 1, 1]

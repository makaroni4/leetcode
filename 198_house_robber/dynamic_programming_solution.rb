# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.size == 1

  dp_cache = [nums[0]]
  dp_cache[1] = nums[0..1].max

  nums[2..-1].each_with_index do |num, i|
    dp_cache[2 + i] = [dp_cache[i] + num, dp_cache[i + 1]].max
  end

  dp_cache.last
end

puts "INCORRECT" unless rob([]) == 0
puts "INCORRECT" unless rob([1, 1, 1, 1, 1]) == 3
puts "INCORRECT" unless rob([1, 2, 3, 4, 5]) == 9
puts "INCORRECT" unless rob([1, 2, 3, 4, 5, 6]) == 12
puts "INCORRECT" unless rob([3, 3, 7, 8, 8]) == 18
puts "INCORRECT" unless rob([3, 3, 7, 8, 8, 9]) == 20
puts "INCORRECT" unless rob([2, 1, 1, 2]) == 4

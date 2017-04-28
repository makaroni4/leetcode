# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  nums.sort!

  nums[1..-1].inject(0) do |moves, num|
    moves += num - nums.first
  end
end

puts "INCORRECT" unless min_moves([3, 3, 3]) == 0
puts "INCORRECT" unless min_moves([1, 2, 3]) == 3
puts "INCORRECT" unless min_moves([1, 2, 3, 3]) == 5
puts "INCORRECT" unless min_moves([1, 2, 3, 4, 5]) == 10




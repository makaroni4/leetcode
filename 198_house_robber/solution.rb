# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?

  even_sum = 0
  odd_sum = 0

  nums.each_with_index do |num, i|
    if i.even?
      even_sum += num
      even_sum = [even_sum, odd_sum].max
    else
      odd_sum += num
      odd_sum = [even_sum, odd_sum].max
    end
  end

  [even_sum, odd_sum].max
end

puts "INCORRECT" unless rob([]) == 0
puts "INCORRECT" unless rob([1, 1, 1, 1, 1]) == 3
puts "INCORRECT" unless rob([1, 2, 3, 4, 5]) == 9
puts "INCORRECT" unless rob([1, 2, 3, 4, 5, 6]) == 12
puts "INCORRECT" unless rob([3, 3, 7, 8, 8]) == 18
puts "INCORRECT" unless rob([3, 3, 7, 8, 8, 9]) == 20
puts "INCORRECT" unless rob([2, 1, 1, 2]) == 4

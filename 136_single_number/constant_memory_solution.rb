# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  result = 0

  nums.each do |num|
    result ^= num
  end

  result
end

puts "INCORRECT" unless single_number([2, 1, 1]) == 2
puts "INCORRECT" unless single_number([2, 1, 2, 1, 5]) == 5

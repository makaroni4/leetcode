# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  seen = {}
  nums.each do |num|
    if seen.has_key?(num)
      seen.delete(num)
    else
      seen[num] = true
    end
  end

  seen.keys.first
end

puts "INCORRECT" unless single_number([2, 1, 1]) == 2
puts "INCORRECT" unless single_number([2, 1, 2, 1, 5]) == 5

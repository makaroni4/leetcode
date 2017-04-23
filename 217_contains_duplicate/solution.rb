# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.inject(Hash.new(0)) do |h, num|
    return true if h[num] == 1

    h[num] += 1
    h
  end

  return false
end

puts "INCORRECT" unless contains_duplicate([]) == false
puts "INCORRECT" unless contains_duplicate([1, 2, 3]) == false
puts "INCORRECT" unless contains_duplicate([1, 2, 3, 1, 5, 6]) == true

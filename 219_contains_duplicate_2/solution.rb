# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  nums.each_with_index.inject({}) do |h, (num, i)|
    last_index = h[num]

    return true if last_index && i - last_index <= k

    h[num] = i
    h
  end

  return false
end

puts "INCORRECT" unless contains_nearby_duplicate([], 1) == false
puts "INCORRECT" unless contains_nearby_duplicate([1, 2, 3], 1) == false
puts "INCORRECT" unless contains_nearby_duplicate([1, 2, 3, 1, 5, 6], 3) == true
puts "INCORRECT" unless contains_nearby_duplicate([1, 2, 3, 4, 1, 5, 6], 3) == false

def remove_element(nums, val)
  next_insert_index = 0
  nums_new_size = 0

  nums.each do |num|
    unless num == val
      nums[next_insert_index] = num
      next_insert_index += 1
    end
  end

  next_insert_index
end

puts "INCORRECT" unless remove_element([], 3) == 0
puts "INCORRECT" unless remove_element([3], 3) == 0
puts "INCORRECT" unless remove_element([1], 3) == 1
puts "INCORRECT" unless remove_element([3, 2, 2, 3], 3) == 2
puts "INCORRECT" unless remove_element([1, 2, 2, 3, 2, 4, 5, 2], 2) == 4

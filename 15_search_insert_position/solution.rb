def search_insert(nums, target)
  return 0 if target < nums.first
  return nums.size if target > nums.last

  index = nums.index { |n| n >= target }
end

puts "INCORRECT" unless search_insert([1,3,5,6], 5) == 2
puts "INCORRECT" unless search_insert([1,3,5,6], 2) == 1
puts "INCORRECT" unless search_insert([1,3,5,6], 7) == 4
puts "INCORRECT" unless search_insert([1,3,5,6], 0) == 0

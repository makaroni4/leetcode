def remove_duplicates(nums)
  return if nums.empty?

  j = 1
  i = 1

  while i < nums.size do
    unless nums[i] == nums[j - 1]
      nums[j] = nums[i]

      j += 1
    end

    i += 1
  end

  j
end

puts "INCORRECT" unless remove_duplicates([]) == nil
puts "INCORRECT" unless remove_duplicates([1, 2]) == 2
puts "INCORRECT" unless remove_duplicates([1, 1, 1, 2, 2, 2, 2]) == 2

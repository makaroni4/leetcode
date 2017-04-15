def two_sum(nums, target)
  nums.each_index.select do |i|
    nums[(i+1)..-1].each_index.select do |j|
      if nums[i] + nums[i + j + 1] == target
        return [i, i + j + 1]
      end
    end
  end
end

puts "INCOORECT" unless two_sum([2, 7, 11, 15], 9) == [0, 1]
puts "INCOORECT" unless two_sum([3, 2, 4], 6) == [1, 2]

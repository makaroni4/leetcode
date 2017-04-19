def two_sum(nums, target)
  map = {}

  nums.each_with_index do |num, i|
    return [map[num], i] if map.has_key?(num)

    map[target - num] = i
  end
end

puts "INCORRECT" unless two_sum([2, 7, 11, 15], 9) == [0, 1]
puts "INCORRECT" unless two_sum([3, 2, 4], 6) == [1, 2]

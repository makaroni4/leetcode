def two_sum(numbers, target)
  cache = {}

  numbers.each_with_index do |num, i|
    return [cache[num], i + 1] if cache.has_key?(num)

    cache[target - num] = i + 1
  end
end

puts "INCORRECT" unless two_sum([2, 3, 4], 6) == [1, 3]
puts "INCORRECT" unless two_sum([2, 7, 9, 11], 9) == [1, 2]
puts "INCORRECT" unless two_sum([1, 2], 3) == [1, 2]
puts "INCORRECT" unless two_sum([1, 2, 3, 4, 5, 6, 7], 13) == [6, 7]

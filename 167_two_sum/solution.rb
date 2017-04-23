def two_sum(numbers, target)
  numbers[0..-2].each_with_index do |n_i, i|
    numbers[(i + 1)..-1].each_with_index do |n_j, j|
      return [i + 1, i + j + 2] if n_i + n_j == target
    end
  end
end

puts "INCORRECT" unless two_sum([2, 7, 9, 11], 9) == [1, 2]
puts "INCORRECT" unless two_sum([1, 2], 3) == [1, 2]
puts "INCORRECT" unless two_sum([1, 2, 3, 4, 5, 6, 7], 13) == [6, 7]

require "test/unit"

def two_sum(nums, target)
  nums.each_index.select do |i|
    # puts "--> i: #{i}"
    puts "--> i: #{nums[i]}"
    nums[(i+1)..-1].each_index.select do |j|
      # puts "--> j: #{i + j + 1}"
      puts "--> j: #{nums[i + j + 1]}"
      if nums[i] + nums[i + j + 1] == target
        return [i, i + j + 1]
      end
    end
  end
end

# puts "COORECT" if two_sum([2, 7, 11, 15], 9) == [0, 1]
# p two_sum([3, 2, 4], 6)
puts "COORECT" if two_sum([3, 2, 4], 6) == [1, 2]

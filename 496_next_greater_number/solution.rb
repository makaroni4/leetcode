# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
  nums_indices = Hash[nums.zip((0..nums.size).to_a)]

  output = []
  find_nums.each do |num|
    i = nums_indices[num] + 1

    num_found = false
    while i < nums.size && !num_found do
      if nums[i] > num
        output << nums[i]
        num_found = true
        break
      end

      i += 1
    end

    output << -1 unless num_found
  end

  output
end

puts "INCORRECT" unless next_greater_element([4, 1, 2], [1, 3, 4, 2]) == [-1, 3, -1]
puts "INCORRECT" unless next_greater_element([2, 4], [1, 2, 3, 4]) == [3, -1]

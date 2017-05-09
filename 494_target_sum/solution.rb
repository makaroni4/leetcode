# @param {Integer[]} nums
# @param {Integer} s
# @return {Integer}
def find_target_sum_ways(nums, s)
  signs = Array.new(nums.size, 0)
  ways = 0
  i = 0

  while i < 2 ** nums.size do
    sum = nums.each_with_index.inject(0) do |sum, (num, index)|
      sum += num * (signs[index] == 0 ? 1 : -1)
    end

    ways += 1 if sum == s

    rindex = signs.rindex { |el| el == 0 }

    unless rindex.nil?
      signs[rindex] = 1
      signs[rindex + 1..-1] = Array.new(nums.size - rindex - 1, 0) if rindex < nums.size - 1
    end

    i += 1
  end

  ways
end

puts "INCORRECT" unless find_target_sum_ways([1, 1, 1, 1, 1], 3) ==  5

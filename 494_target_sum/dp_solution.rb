# @param {Integer[]} nums
# @param {Integer} s
# @return {Integer}
def find_target_sum_ways(nums, s)
  dic = nums.first == 0 ? { 0 => 2 } : {
    nums[0] => 1,
    -nums[0] => 1
  }

  (nums.size - 1).times do |i|
    i += 1

    tdic = {}
    dic.each_key do |d|
      tdic[d + nums[i]] = tdic[d + nums[i]].to_i + dic[d].to_i
      tdic[d - nums[i]] = tdic[d - nums[i]].to_i + dic[d].to_i
    end

    dic = tdic
  end

  dic[s].to_i
end

puts "INCORRECT" unless find_target_sum_ways([1, 1, 1, 1, 1], 3) ==  5

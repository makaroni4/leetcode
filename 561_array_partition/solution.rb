# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort.each_slice(2).inject(0) do |sum, (min_num, _)|
    sum += min_num
  end
end

puts "INCORRECT" unless array_pair_sum([1,4,3,2]) == 4

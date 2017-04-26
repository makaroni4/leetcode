class NumArray

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
      @nums = nums

      @nums[1..-1].each_with_index do |num, i|
        @nums[i + 1] = @nums[i] + num
      end if @nums.any?
    end


=begin
    :type i: Integer
    :type j: Integer
    :rtype: Integer
=end
    def sum_range(i, j)
      return 0 if @nums.empty?

      return @nums[j] if i == 0

      @nums[j] - @nums[i - 1]
    end
end

# Your NumArray object will be instantiated and called as such:
obj = NumArray.new([-2, 0, 3, -5, 2, -1])

puts "INCORRECT" unless obj.sum_range(0, 2) == 1
puts "INCORRECT" unless obj.sum_range(2, 5) == -1
puts "INCORRECT" unless obj.sum_range(0, 5) == -3

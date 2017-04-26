class MedianFinder

=begin
    initialize your data structure here.
=end
    def initialize()
        @nums = []
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
        i = @nums.index { |n| num > n } || -1
        @nums.insert(i, num)
    end


=begin
    :rtype: Float
=end
    def find_median()
        return if @nums.empty?

        middle = @nums.size / 2

        if @nums.size.even?
            (@nums[middle] + @nums[middle - 1]) / 2.0
        else
            @nums[middle]
        end
    end
end

# Your MedianFinder object will be instantiated and called as such:
obj = MedianFinder.new()

puts "INCORRECT 1" unless obj.find_median() == nil

obj.add_num(6)

puts "INCORRECT 1" unless obj.find_median() == 6

obj.add_num(10)

puts "INCORRECT 2" unless obj.find_median() == 8

obj.add_num(2)

puts "INCORRECT 3" unless obj.find_median() == 6

obj.add_num(6)

puts "INCORRECT 4" unless obj.find_median() == 6

obj.add_num(5)

puts "INCORRECT 5" unless obj.find_median() == 6

obj.add_num(0)

puts "INCORRECT 6" unless obj.find_median() == 5.5

obj.add_num(6)

puts "INCORRECT 7" unless obj.find_median() == 6


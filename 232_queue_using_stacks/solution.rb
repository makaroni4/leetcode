class MyQueue

=begin
    Initialize your data structure here.
=end
    def initialize()
        @s1 = []
        @s2 = []
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        while @s1.any? do
            @s2.push(@s1.pop)
        end

        @s1.push(x)

        while @s2.any? do
            @s1.push(@s2.pop)
        end
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop()
        @s1.pop
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek()
        @s1.last
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty()
        @s1.empty?
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()

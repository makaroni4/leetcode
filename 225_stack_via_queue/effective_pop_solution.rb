class MyStack

=begin
    Initialize your data structure here.
=end
    def initialize()
        @q1 = []
        @q2 = []
    end


=begin
    Push element x onto stack.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @q2.push(x)

        while @q1.any? do
            @q2.push(@q1.shift)
        end

        @q2, @q1 = @q1, @q2
    end


=begin
    Removes the element on top of the stack and returns that element.
    :rtype: Integer
=end
    def pop()
        @q1.shift
    end


=begin
    Get the top element.
    :rtype: Integer
=end
    def top()
        @q1.first
    end


=begin
    Returns whether the stack is empty.
    :rtype: Boolean
=end
    def empty()
        @q1.empty?
    end


end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()

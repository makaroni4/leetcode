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
        @q1.push(x)
    end


=begin
    Removes the element on top of the stack and returns that element.
    :rtype: Integer
=end
    def pop()
        while @q1.size > 1 do
            @q2.push(@q1.shift)
        end

        output = @q1.shift

        @q2, @q1 = @q1, @q2

        output
    end


=begin
    Get the top element.
    :rtype: Integer
=end
    def top()
        @q1.last
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
# obj.push("")
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()

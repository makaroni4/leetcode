def is_palindrome(x)
  x.to_s == x.to_s.reverse
end

puts "INCORRECT" unless is_palindrome(4554)
puts "INCORRECT" if is_palindrome(-2147483648)

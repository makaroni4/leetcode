def is_palindrome(x, divided = x, reverse_num = 0)
  return x == reverse_num if divided < 1

  is_palindrome(x, divided / 10, reverse_num * 10 + divided % 10)
end

puts "INCORRECT" unless is_palindrome(4554)
puts "INCORRECT" if is_palindrome(-2147483648)

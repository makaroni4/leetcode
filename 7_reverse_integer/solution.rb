def reverse(x)
  n = x.to_s.reverse.to_i
  n = -n if x < 0

  return n > 2**31 - 1 || n < -2**31 ? 0 : n
end

puts "INCORRECT" unless reverse(123) == 321
puts "INCORRECT" unless reverse(-123) == -321

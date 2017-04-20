def my_pow(x, n)
  return 1 if n == 0

  result = x.to_f
  multiplier = x.to_f

  if n < 0
    n = n.abs
    result = 1.0 / x
    multiplier = 1.0 / x
  end

  while n > 1 do
    result *= multiplier
    n -= 1
  end

  result
end

puts "INCORRECT" unless my_pow(2, 0) == 1.0
puts "INCORRECT" unless my_pow(2, 1) == 2.0
puts "INCORRECT" unless my_pow(2, 2) == 4.0
puts "INCORRECT" unless my_pow(2, 3) == 8.0
puts "INCORRECT" unless my_pow(2, -2) == 0.25
puts "INCORRECT" unless my_pow(0.001, 2) == 10 ** -6

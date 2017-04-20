def my_pow(x, n)
  return 1 if n == 0

  if n < 0
    x = 1 / x.to_f
    n = n.abs
  end

  r = my_pow(x, n / 2)

  return n.even? ? r * r : x * r * r
end

puts "INCORRECT" unless my_pow(2, 0) == 1.0
puts "INCORRECT" unless my_pow(2, 1) == 2.0
puts "INCORRECT" unless my_pow(2, 2) == 4.0
puts "INCORRECT" unless my_pow(2, 3) == 8.0
puts "INCORRECT" unless my_pow(2, -2) == 0.25
puts "INCORRECT" unless my_pow(0.001, 2) == 10 ** -6

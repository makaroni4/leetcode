class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

def climb_stairs(n)
  sizes = []
  ones = [1] * n

  twos_count = 0
  ones_count = n

  while ones_count >= 1
    sizes.push([ones_count, twos_count])

    ones_count -= 2
    twos_count += 1
  end

  sizes.push([ones_count, twos_count]) if ones_count == 0

  count = 0
  sizes.each do |ones_count, twos_count|
    # permutations with repetitions
    count += (ones_count + twos_count).fact / ones_count.fact / twos_count.fact
  end

  count
end

puts "INCORRECT" unless climb_stairs(1) == 1
puts "INCORRECT" unless climb_stairs(2) == 2
puts "INCORRECT" unless climb_stairs(3) == 3
puts "INCORRECT" unless climb_stairs(4) == 5
puts "INCORRECT" unless climb_stairs(5) == 8
puts "INCORRECT" unless climb_stairs(6) == 13

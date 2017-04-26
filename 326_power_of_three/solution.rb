# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n == 0

  while n % 3 == 0 do
    n /= 3
  end

  n == 1
end

puts "INCORRECT" if is_power_of_three(0)
puts "INCORRECT" unless is_power_of_three(1)
puts "INCORRECT" unless is_power_of_three(3)
puts "INCORRECT" if is_power_of_three(6)
puts "INCORRECT" unless is_power_of_three(9)
puts "INCORRECT" if is_power_of_three(13)
puts "INCORRECT" if is_power_of_three(15)
puts "INCORRECT" if is_power_of_three(18)
puts "INCORRECT" if is_power_of_three(21)
puts "INCORRECT" unless is_power_of_three(27)
puts "INCORRECT" unless is_power_of_three(81)
puts "INCORRECT" if is_power_of_three(131)
puts "INCORRECT" unless is_power_of_three(243)

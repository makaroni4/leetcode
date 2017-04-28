# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  return false if num < 2

  i = 2

  max_i = Math.sqrt(num)
  divisors = [1]
  while i <= max_i do
    if num % i == 0
      divisors << i

      same_num = num / i

      divisors << same_num unless same_num == i
    end

    i += 1
  end

  divisors.reduce(:+) == num
end

puts "INCORRECT" if check_perfect_number(-6)
puts "INCORRECT" unless check_perfect_number(6)
puts "INCORRECT" if check_perfect_number(-28)
puts "INCORRECT" unless check_perfect_number(28)
puts "INCORRECT" if check_perfect_number(27)



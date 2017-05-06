# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  return [0] if num == 0

  (num + 1).times.inject([]) do |output, n|
    output << n.to_s(2).count("1")
  end
end

puts "INCORRECT" unless count_bits(0) == [0]
puts "INCORRECT" unless count_bits(1) == [0, 1]
puts "INCORRECT" unless count_bits(5) == [0, 1, 1, 2, 1, 2]

# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  output = Array.new(num + 1, 0)

  (1..num).each do |i|
    output[i] = i % 2 + output[i / 2]
  end

  output
end

puts "INCORRECT" unless count_bits(0) == [0]
puts "INCORRECT" unless count_bits(1) == [0, 1]
puts "INCORRECT" unless count_bits(5) == [0, 1, 1, 2, 1, 2]

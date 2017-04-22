# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.to_s(2).count("1")
end

puts "INCORRECT" unless hamming_weight(11) == 3
puts "INCORRECT" unless hamming_weight(8) == 1

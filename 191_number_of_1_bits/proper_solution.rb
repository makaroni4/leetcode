# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n_count = 0

  while n > 1 do
    n_count += 1 if n % 2 == 1
    n = n / 2
  end

  n_count += 1 if n == 1

  n_count
end

puts "INCORRECT" unless hamming_weight(11) == 3
puts "INCORRECT" unless hamming_weight(8) == 1

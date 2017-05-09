# @param {String} a
# @param {String} b
# @return {String}
def complex_number_multiply(a, b)
  a_real, a_im = a.split("+").map(&:to_i)
  b_real, b_im = b.split("+").map(&:to_i)

  c_real = a_real * b_real - a_im * b_im
  c_im = a_real * b_im + b_real * a_im

  [c_real, "+", c_im, "i" ].join("")
end

puts "INCORRECT" unless complex_number_multiply("1+1i", "1+1i") == "0+2i"
puts "INCORRECT" unless complex_number_multiply("1+-1i", "1+-1i") == "0+-2i"
puts "INCORRECT" unless complex_number_multiply("1+1i", "2+-3i") == "5+-1i"

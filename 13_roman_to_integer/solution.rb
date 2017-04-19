def roman_to_int(s)
  letters = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }

  number = 0
  i = 0

  while i < s.size - 1 do
    if letters[s[i]] >= letters[s[i + 1]]
      number += letters[s[i]]
      i += 1
    else
      number += letters[s[i + 1]] - letters[s[i]]
      i += 2
    end
  end

  number += letters[s[i]] if i == s.size - 1

  number
end

puts "INCORRECT" unless roman_to_int("DCXXI") == 621
puts "INCORRECT" unless roman_to_int("MCMXCVI") == 1996
puts "INCORRECT" unless roman_to_int("CMLII") == 952

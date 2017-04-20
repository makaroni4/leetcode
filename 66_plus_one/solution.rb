def plus_one(digits)
  extra = 0

  if digits[-1] == 9
    extra = 1
    digits[-1] = 0
  else
    digits[-1] += 1
  end

  i = digits.size - 2

  while extra > 0 && i >= 0
    if digits[i] == 9
      digits[i] = 0
      extra = 1
    else
      digits[i] += extra
      break
    end

    i -= 1
  end

  if extra > 0 && i == -1
    digits.unshift(1)
  end

  digits
end

puts "INCORRECT" unless plus_one([0]) == [1]
puts "INCORRECT" unless plus_one([1, 0]) == [1, 1]
puts "INCORRECT" unless plus_one([1, 9]) == [2, 0]
puts "INCORRECT" unless plus_one([9, 9]) == [1, 0, 0]

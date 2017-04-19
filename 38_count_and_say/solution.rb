def say(n)
  n = n.to_s

  counts = []

  current_digit = n[0]
  current_count = 0

  n.each_char.each_with_index do |c, i|
    if c == current_digit
      current_count += 1
    else
      counts += [current_count, current_digit]
      current_digit = c
      current_count = 1
    end

    if i == (n.size - 1)
      counts += [current_count, current_digit]
    end
  end

  counts.join("")
end

def count_and_say(n)
  said = "1"

  (n - 1).times { said = say(said) }

  said
end

puts "INCORRECT" unless count_and_say(1) == "1"
puts "INCORRECT" unless count_and_say(2) == "11"
puts "INCORRECT" unless count_and_say(3) == "21"
puts "INCORRECT" unless count_and_say(4) == "1211"
puts "INCORRECT" unless count_and_say(5) == "111221"

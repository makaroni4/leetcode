def is_valid(s)
  parentheses = {
    "]" => "[",
    ")" => "(",
    "}" => "{"
  }

  opened_parentheses = []

  s.each_char do |c|
    if parentheses.has_key?(c)
      unless parentheses[c] == opened_parentheses.pop
        return false
      end
    else
      opened_parentheses.push(c)
    end
  end

  return opened_parentheses.empty?
end

puts "INCORRECT" unless is_valid("()")
puts "INCORRECT" unless is_valid("()[]{}")
puts "INCORRECT" if is_valid("(]")
puts "INCORRECT" if is_valid("([)]")
puts "INCORRECT" if is_valid("[")

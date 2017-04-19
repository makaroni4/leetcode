def longest_common_prefix(strs)
  return "" if strs.empty?
  return "" if strs.any? { |s| s.empty? }

  first_string = strs.first

  prefix = ""
  next_prefix_letter = first_string[0]

  while next_prefix_letter && strs.all? { |s| s[prefix.size] == next_prefix_letter } do
    prefix << next_prefix_letter
    next_prefix_letter = first_string[prefix.size]
  end

  prefix
end

puts "INCORRECT" unless longest_common_prefix([]) == ""
puts "INCORRECT" unless longest_common_prefix([""]) == ""
puts "INCORRECT" unless longest_common_prefix(["a"]) == "a"
puts "INCORRECT" unless longest_common_prefix(["abc", "bc"]) == ""
puts "INCORRECT" unless longest_common_prefix(["abc", "ab", "a"]) == "a"
puts "INCORRECT" unless longest_common_prefix(["abc", "ab", "ab"]) == "ab"

def length_of_longest_substring(s)
  max_substring_length = 0
  current_substring = ""

  s.each_char do |c|
    if current_substring.include?(c)
      c_index = current_substring.index(c)
      current_substring = current_substring[c_index + 1..-1] + c
    else
      current_substring << c
      max_substring_length = current_substring.size if current_substring.size > max_substring_length
    end
  end

  max_substring_length
end

puts "INCORRECT" unless length_of_longest_substring("abcabcbb") == 3
puts "INCORRECT" unless length_of_longest_substring("bbbbb") == 1
puts "INCORRECT" unless length_of_longest_substring("pwwkew") == 3
puts "INCORRECT" unless length_of_longest_substring("aab") == 2
puts "INCORRECT" unless length_of_longest_substring("aaaaaqwertyyyy") == 7

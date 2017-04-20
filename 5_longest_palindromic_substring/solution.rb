def longest_palindrome(s)
  return s if s.size == 1

  current_palindrome = s[0]
  longest_palindrome = current_palindrome

  chars = s.each_char.each_with_index.inject({}) do |h, (c, index)|
    if index > 0 && s[index - 1] == c
      current_palindrome << c
    else
      longest_palindrome = current_palindrome if current_palindrome.size > longest_palindrome.size

      current_palindrome = c
    end

    if index == s.size - 1 && current_palindrome.size > longest_palindrome.size
      longest_palindrome = current_palindrome
    end

    h[c] ||= []
    h[c].push(index)

    h
  end

  chars.each do |char, indices|
    char_indices = []
    indices.each do |i|
      first_left_index = indices.index { |j| j - i + 1 > longest_palindrome.size}

      next if first_left_index.nil?

      char_indices += [i].product(indices[first_left_index..-1])
    end

    char_indices.each do |left_index, right_index|
      left_middle_index = (right_index + left_index) / 2
      right_middle_index = (right_index + left_index).odd? ? left_middle_index + 1 : left_middle_index

      is_palindrome = s[left_index..left_middle_index] == s[right_middle_index..right_index].reverse

      if is_palindrome &&
         (right_index - left_index + 1) > longest_palindrome.size

        longest_palindrome = s[left_index..right_index]
      end
    end
  end

  longest_palindrome
end

puts "INCORRECT" unless ["bab", "aba"].include?(longest_palindrome("babad"))
puts "INCORRECT" unless longest_palindrome("cbbd") == "bb"
puts "INCORRECT" unless longest_palindrome("bb") == "bb"
puts "INCORRECT" unless longest_palindrome("abadd") == "aba"
puts "INCORRECT" unless longest_palindrome("a") == "a"
puts "INCORRECT" unless longest_palindrome("abcda") == "a"
puts "INCORRECT" unless longest_palindrome("abba") == "abba"
puts "INCORRECT" unless longest_palindrome("abcba") == "abcba"
puts "INCORRECT" unless longest_palindrome("aaabaaaa") == "aaabaaa"
puts "INCORRECT" unless longest_palindrome("aaaaaaa") == "aaaaaaa"
puts "INCORRECT" unless longest_palindrome("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabcaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

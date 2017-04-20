def longest_palindrome(s)
  return s if s.size == 1
  return s if s.split("").uniq.size == 1

  # cache[i][j] is boolean for s[i..j]
  cache = Array.new(s.size) { Array.new(s.size) }
  s.size.times { |i| cache[i][i] = true }

  longest_palindrome_size = 1
  longest_palindrome_left_index = 0

  s.each_char.each_with_index do |c, i|
    if c == s[i + 1]
      cache[i][i + 1] = true
      longest_palindrome_left_index = i
      longest_palindrome_size = 2
    end
  end

  l = 3
  while l <= s.size do
    0.upto(s.size - l + 1) do |i|
      j = i + l - 1

      if cache[i + 1][j - 1] && s[i] == s[j]
        cache[i][j] = true

        if l > longest_palindrome_size
          longest_palindrome_left_index = i
          longest_palindrome_size = l
        end
      end
    end

    l += 1
  end

  s[longest_palindrome_left_index..longest_palindrome_left_index + longest_palindrome_size - 1]
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

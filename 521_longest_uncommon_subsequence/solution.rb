def find_lu_slength(a, b)
  a == b ? -1 : [a.size, b.size].max
end

puts "INCORRECT" unless find_lu_slength("aaa", "aaa") == -1
puts "INCORRECT" unless find_lu_slength("aba", "cdc") == 3
puts "INCORRECT" unless find_lu_slength("abba", "abxdiy") == 6
puts "INCORRECT" unless find_lu_slength("aefawfawfawfaw", "aefawfeawfwafwaef") == 17

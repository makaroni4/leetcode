# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(" ").map(&:reverse).join(" ")
end

puts "INCORRECT" unless reverse_words("Let's take LeetCode contest") == "s'teL ekat edoCteeL tsetnoc"

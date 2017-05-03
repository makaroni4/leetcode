# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  d = Array.new(s.size, false)

  i = 0
  while i < s.size do
    word_dict.each do |word|
      if word == s[i + 1 - word.size..i] && (d[i - word.size] || i - word.size == -1)
        d[i] = true
      end
    end

    i += 1
  end

  d.last
end

puts "INCORRECT" unless word_break("leetcode", ["leet", "code"])
puts "INCORRECT" if word_break("leetcode", ["leet", "cod"])

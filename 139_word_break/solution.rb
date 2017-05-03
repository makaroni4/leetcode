# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  set = Hash[word_dict.zip(Array.new(word_dict.size, true))]

  queue = []

  s.size.times do |i|
    prefix = s[0..i]
    suffix = s[i + 1..-1]

    queue.push([prefix, suffix]) if set.has_key?(prefix)
  end

  known_prefixes = {}

  while queue.any? do
    prefix, suffix = queue.pop

    if set.has_key?(prefix)
      return true if suffix.empty?

      suffix.size.times do |i|
        queue.push([suffix[0..i], suffix[i + 1..-1]])
      end
    end
  end

  return false
end

puts "INCORRECT" unless word_break("leetcode", ["leet", "code"])
puts "INCORRECT" if word_break("leetcode", ["leet", "cod"])

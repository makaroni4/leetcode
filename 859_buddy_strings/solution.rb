# @param {String} a
# @param {String} b
# @return {Boolean}
def buddy_strings(a, b)
  return false if a.length < 2 || b.length < 2
  return false unless a.length == b.length

  if a == b
    return a.chars.uniq.size != a.chars.size
  else
    swaps = {}
    a.each_char.each_with_index do |aa, i|
      bb = b[i]

      next if aa == bb

      if swaps.length > 2
        return false
      elsif swaps.length == 1 && swaps[bb] != aa
        return false
      else
        swaps[aa] = bb
      end
    end
  end

  true
end

puts "INCORRECT 1" unless buddy_strings("ab", "ba")
puts "INCORRECT 2" if buddy_strings("ab", "ab")
puts "INCORRECT 3" unless buddy_strings("aa", "aa")
puts "INCORRECT 4" unless buddy_strings("aaaaaaabc", "aaaaaaacb")
puts "INCORRECT 5" if buddy_strings("", "aa")
puts "INCORRECT 6" unless buddy_strings("aaab", "aaba")
puts "INCORRECT 7" unless buddy_strings("aab", "aab")
puts "INCORRECT 8" if buddy_strings("a", "a")
puts "INCORRECT 9" if buddy_strings("ba", "ac")
puts "INCORRECT 10" if buddy_strings("ab", "ca")
puts "INCORRECT 11" unless buddy_strings("abab", "abab")
puts "INCORRECT 12" unless buddy_strings("abcabc", "abcabc")
puts "INCORRECT 13" unless buddy_strings("abcdabcd", "abcdabcd")
puts "INCORRECT 14" if buddy_strings("abcd", "abcd")

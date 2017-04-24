# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s_chars = s.each_char.inject(Hash.new(0)) do |h, char|
    h[char] += 1
    h
  end

  t_chars = t.each_char.inject(Hash.new(0)) do |h, char|
    h[char] += 1
    h
  end

  s_chars.each do |char, s_count|
    t_count = t_chars.delete(char)

    return false unless t_count == s_count

    s_chars.delete(char)
  end

  return s_chars.empty? && t_chars.empty?
end

puts "INCORRECT" if is_anagram("rat", "car")
puts "INCORRECT" unless is_anagram("anagram", "anagram")
puts "INCORRECT" unless is_anagram("anagram", "nagaram")
puts "INCORRECT" unless is_anagram("ȐȑȒȓȔȕȖȗȘșȚțȜȝȞȟ", "ȑȐȒȓȔȕȖȗȘșȚțȜȝȞȟ")

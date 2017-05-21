# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  @cache = {}
  @word1 = word1
  @word2 = word2

  return dp(0, 0)
end

def dp(i, j)
  unless @cache.has_key?([i, j])
    if i == @word1.size || j == @word2.size
      ans = @word1.size + @word2.size - i - j
    elsif @word1[i] == @word2[j]
      ans = dp(i + 1, j + 1)
    else
      ans = 1 + [dp(i + 1, j), dp(i, j + 1)].min
    end

    @cache[[i, j]] = ans
  end

  return @cache[[i, j]]
end

puts "INCORRECT" unless min_distance("sea", "eat") == 2
puts "INCORRECT" unless min_distance("beef", "feet") == 4
puts "INCORRECT" unless min_distance("beef", "bee") == 1
puts "INCORRECT" unless min_distance("milk", "swag") == 8
puts "INCORRECT" unless min_distance("storm", "prawn") == 8
puts "INCORRECT" unless min_distance("pig", "twig") == 3
puts "INCORRECT" unless min_distance("tea", "ta") == 1

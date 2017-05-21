# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  m, n = word1.size, word2.size

  dp = Array.new(m + 1) { Array.new(n + 1, 0) }

  m.times do |i|
    n.times do |j|
      dp[i + 1][j + 1] = [dp[i][j + 1], dp[i + 1][j], (word1[i] == word2[j] ? dp[i][j] + 1 : dp[i][j])].max
    end
  end

  return m + n - 2 * dp[m][n]
end

puts "INCORRECT" unless min_distance("sea", "eat") == 2
puts "INCORRECT" unless min_distance("beef", "feet") == 4
puts "INCORRECT" unless min_distance("beef", "bee") == 1
puts "INCORRECT" unless min_distance("milk", "swag") == 8
puts "INCORRECT" unless min_distance("storm", "prawn") == 8
puts "INCORRECT" unless min_distance("pig", "twig") == 3
puts "INCORRECT" unless min_distance("tea", "ta") == 1

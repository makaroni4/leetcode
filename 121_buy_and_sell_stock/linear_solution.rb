def max_profit(prices)
  return 0 if prices.empty? || prices.size == 1

  min_price = prices[0]
  profit = prices[1] - prices[0]

  prices[1..-1].each do |price|
    profit = price - min_price if price - min_price > profit
    min_price = price if min_price > price
  end

  profit > 0 ? profit : 0
end

puts "INCORRECT" unless max_profit([]) == 0
puts "INCORRECT" unless max_profit([1]) == 0
puts "INCORRECT" unless max_profit([3, 2, 6, 5, 0, 3]) == 4
puts "INCORRECT" unless max_profit([2, 4, 1]) == 2
puts "INCORRECT" unless max_profit([7, 6, 4, 3, 1]) == 0
puts "INCORRECT" unless max_profit([7, 1, 5, 3, 6, 4]) == 5
puts "INCORRECT" unless max_profit([7, 1, 5, 3, 6, 4, 9]) == 8


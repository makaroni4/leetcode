def max_profit(prices)
  profit = 0

  daily_prices = prices.each_with_index.inject([]) do |a, (price, i)|
    a << [price, i]
  end

  daily_prices.sort_by! do |row|
    price, i = row

    -price
  end

  while daily_prices.any? do
    low_price = daily_prices.pop
    high_price_index = daily_prices.index { |price| low_price[0] < price[0] && low_price[1] < price[1] }

    if high_price_index
      high_price = daily_prices.delete_at(high_price_index)
      pair_profit = high_price[0] - low_price[0]

      profit = pair_profit if pair_profit > profit
    end
  end

  profit
end

puts "INCORRECT 1" unless max_profit([3, 2, 6, 5, 0, 3]) == 4
puts "INCORRECT 2" unless max_profit([2, 4, 1]) == 2
puts "INCORRECT 3" unless max_profit([7, 6, 4, 3, 1]) == 0
puts "INCORRECT 4" unless max_profit([7, 1, 5, 3, 6, 4]) == 5
puts "INCORRECT 5" unless max_profit([7, 1, 5, 3, 6, 4, 9]) == 8


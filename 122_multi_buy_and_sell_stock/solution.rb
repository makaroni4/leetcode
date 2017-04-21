def max_profit(prices)
  profit = 0

  prices.each_cons(2) do |price1, price2|
    profit += [price2 - price1, 0].max
  end

  profit
end

puts "INCORRECT" unless max_profit([]) == 0
puts "INCORRECT" unless max_profit([1]) == 0
puts "INCORRECT" unless max_profit([1, 2, 4, 5]) == 4

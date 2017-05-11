# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
  kind_distr = candies.inject(Hash.new(0)) do |h, k|
    h[k] += 1
    h
  end

  kind_distr = kind_distr.sort_by(&:last).reverse

  amount_per_kid = candies.size / 2
  bro_amount = 0

  kind_distr.size.times do |i|
    bro_amount += kind_distr[i][1] - 1

    kind_distr[i][1] = 1
  end

  sister_kinds = kind_distr.select { |v| v.last > 0 }.size

  if bro_amount < amount_per_kid
    sister_kinds - (amount_per_kid - bro_amount)
  else
    sister_kinds
  end
end

puts "INCORRECT 1" unless distribute_candies([1, 1, 2, 2, 3, 3]) == 3
puts "INCORRECT 2" unless distribute_candies([1, 1, 2, 3]) == 2

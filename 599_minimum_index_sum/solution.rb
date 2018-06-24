# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
  h1 = list1.each_with_index.inject({}) do |h, (restaraunt, index)|
    h[restaraunt] = index
    h
  end

  mutual_restaraunts = list2.each_with_index.inject({}) do |h, (restaraunt, index)|
    if h1.has_key?(restaraunt)
      h[restaraunt] = index + h1[restaraunt]
    end

    h
  end

  mutual_restaraunts = mutual_restaraunts.sort_by(&:last)

  _, min_sum = mutual_restaraunts[0]

  i = 0
  output = []
  while mutual_restaraunts[i] && mutual_restaraunts[i][1] == min_sum do
    output << mutual_restaraunts[i][0]
    i += 1
  end

  output
end

puts "INCORRECT" unless find_restaurant(
    ["Shogun", "Tapioca Express", "Burger King", "KFC"],
    ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
  ) == ["Shogun"]

puts "INCORRECT" unless find_restaurant(
    ["Shogun", "Tapioca Express", "Burger King", "KFC"],
    ["KFC", "Shogun", "Burger King"]
  ) == ["Shogun"]

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_volume = 0
  i = 0
  j = height.size - 1

  while i < j do
    max_volume = [max_volume, (j - i) * [height[i], height[j]].min].max

    if height[j] > height[i]
      i += 1
    else
      j -= 1
    end
  end

  max_volume
end

puts "INCORRECT" unless max_area([1,2,3,4]) == 4

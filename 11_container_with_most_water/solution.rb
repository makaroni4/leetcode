# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_volume = 0

  i = 0
  while i < height.size do
    j = i + 1
    while j < height.size do
      volume_i_j = (j - i) * [height[i], height[j]].min

      max_volume = volume_i_j if volume_i_j > max_volume

      j += 1
    end

    i += 1
  end

  max_volume
end

puts "INCORRECT" unless max_area([1,2,3,4]) == 4

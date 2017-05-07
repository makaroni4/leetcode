# @param {Integer[]} nums
# @return {String}
def optimal_division(nums)
  return nums.first.to_s if nums.size == 1
  return nums.join("/") if nums.size == 2

  output = nums.zip(Array.new(nums.size, "/")).flatten[0..-2]
  output.push(")")
  output.insert(2, "(")

  output.join("")
end

puts "INCORRECT" unless optimal_division([2]) == "2"
puts "INCORRECT" unless optimal_division([1000, 100, 10, 2]) == "1000/(100/10/2)"

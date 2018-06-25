# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  output = []

  num_rows.times do |i|
    if i == 0
      output << [1]
    elsif i == 1
      output << [1, 1]
    else
      last_row = output.last
      new_row = []

      new_row << last_row.first
      last_row.each_cons(2) { |p| new_row << p.reduce(:+) }
      new_row << last_row.last

      output << new_row
    end
  end

  output
end

puts "INCORRECT" unless generate(3) == [[1], [1, 1], [1, 2, 1]]

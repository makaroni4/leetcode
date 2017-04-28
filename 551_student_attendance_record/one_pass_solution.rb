# @param {String} s
# @return {Boolean}
def check_record(s)
  a_count = 0
  cons_l_count = 0

  s.each_char do |c|
    if c == "A"
      a_count += 1

      return false if a_count > 1

      cons_l_count = 0
    elsif c == "L"
      cons_l_count += 1

      return false if cons_l_count > 2
    else
      cons_l_count = 0
    end
  end

  return true
end

puts "INCORRECT" unless check_record("PPALLP")
puts "INCORRECT" if check_record("PPALLL")

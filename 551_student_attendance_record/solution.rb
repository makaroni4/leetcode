# @param {String} s
# @return {Boolean}
def check_record(s)
  stats = s.each_char.inject(Hash.new(0)) do |h, c|
    h[c] += 1
    h
  end

  double_stats = s.split("").each_cons(3).inject(Hash.new(0)) do |h, c|
    h[c.join] += 1
    h
  end

  stats["A"] < 2 && double_stats["LLL"] == 0
end

puts "INCORRECT" unless check_record("PPALLP")
puts "INCORRECT" if check_record("PPALLL")

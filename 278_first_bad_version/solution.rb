# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n

  while left < right do
    mid = left + (right - left) / 2

    if is_bad_version(mid)
      right = mid
    else
      left = mid + 1
    end
  end

  left
end

def is_bad_version(n)
  return true
end

puts "INCORRECT 1" unless first_bad_version(2) == 1

def is_bad_version(n)
  return n < 2 ? false : true
end

puts "INCORRECT 2" unless first_bad_version(3) == 2

def is_bad_version(n)
  return n < 4 ? false : true
end

puts "INCORRECT 3" unless first_bad_version(10) == 4

def is_bad_version(n)
  return n < 98 ? false : true
end

puts "INCORRECT 4" unless first_bad_version(231) == 98

def is_bad_version(n)
  return n < 1702766719 ? false : true
end

puts "INCORRECT 5" unless first_bad_version(2126753390) == 1702766719

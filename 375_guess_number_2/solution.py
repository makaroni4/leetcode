class Solution(object):
  def getMoneyAmount(self, n):
    sum = 0

    left = 1
    right = n

    while left < right:
      mid = left + int((right - left) / 2) + 1
      print(mid)
      sum += mid

      left = mid + 1

    return sum

s = Solution()

# assert s.getMoneyAmount(1) == 0
# assert s.getMoneyAmount(2) == 1
assert s.getMoneyAmount(4) == 4

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num):

class Solution(object):
    def guessNumber(self, n):
        if guess(n) == 0:
          return n

        left = 1
        right = n

        while left < right:
          mid = left + (right - left) / 2

          current_guess = guess(mid)

          if current_guess == 0:
            return mid
          elif current_guess > 0:
            left = mid + 1
          else:
            right = mid

        return left

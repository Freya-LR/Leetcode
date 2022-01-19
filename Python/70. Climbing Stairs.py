# Dynamic Programming
# Time: O(n)
# Space: O(1)

class Solution:
    def climbStairs(self, n):
        """
        type n: int
        rtype: int
        """
        prev, current = 0, 1
        for i in range(n):
            prev, current = current, prev + current,

        return current

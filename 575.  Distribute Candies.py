# Array
# Time: O(n+m)
# Space: O(1)
# Alice can only eat n/2 candies, let her eat the larget type of candies.
# if type is larger than n/2, she can just eat n/2 candies
# if type is less than n/2, the types she can eat is number of types
# so get the minimum number of two type of situation, len(candyType) >> 1 get the n/2 candies, len(set(candyType)) get the largest types

class Solution:
    def distributeCandies(self, candyType):
        """
        type candyType: List[int]) 
        rtype: int
        """
        return min(len(set(candyType)), len(candyType)//2)

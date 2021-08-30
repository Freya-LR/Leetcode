# Array
# Time: O(n+m)
# Space: O(1)

class Solution:
    def merge(self, nums1, m, nums2, n):
        """
        type num1,num2: list[int]
        type m,n: int
        
        """
        while m>0 and n>0:
            if nums1[m-1] > nums2[n-1]:
                nums1[n+m-1] = nums1[m-1]
                m -=1 
            else:
                nums1[n+m-1] = nums1[n-1]
                n -=1
        nums1[:n]=nums2[:n] # when m decreases to 0 but n hasn't decreased to 0 yet(0<m<n), copy nums2 element to nums1 

class Solution(object):
    def reverse(self,x):
        """
        :type x: int
        :rtype: int
        """
        maxrange = 2 ** 31
        minrange = -2 ** 31
        if x > 0:
            reverse_int = int(str(x)[::-1])
            
        if x <= 0:
            x = -1 * x
            reverse_int = int(str(x)[::-1])
            reverse_int = -1 * reverse_int
            
        if minrange < reverse_int < maxrange:
            return reverse_int
        else:
            return 0
       
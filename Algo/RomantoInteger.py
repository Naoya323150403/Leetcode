class Solution:
    def romanToInt(self, s: str) -> int:
        result = 0
        Roman = {'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000}

        for i in range(0,len(s)):
            if i > 0 and Roman[s[i]] > Roman[s[i-1]]:
                x = Roman[s[i]] - Roman[s[i-1]]
                result += x - Roman[s[i-1]]
            else:
                result += Roman[s[i]]
        return result
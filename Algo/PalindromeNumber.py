class Solution:
    def isPalindrome(self, x: int) -> bool:
        Palindrome = str(x)
        if Palindrome == Palindrome[::-1]:
            return True
        else:
            return False

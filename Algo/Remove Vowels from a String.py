class Solution:
    def removeVowels(self, s: str) -> str:
        s = re.sub(r"[aiueo]", "", s)
        return s

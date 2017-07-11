"""
Excercise from https://leetcode.com/problems/isomorphic-strings/
Given two strings s and t, determine if they are isomorphic.
Two strings are isomorphic if the characters in s can be replaced to get t.
All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
For example,
Given "egg", "add", return true.
Given "foo", "bar", return false.
Given "paper", "title", return true.
"""


class Solution(object):
    @staticmethod
    def isIsomorphic(s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        if len(s) != len(t):
            return False
        h = {}
        for i, letter in enumerate(s):
            if letter in h:
                if h[letter] != t[i]:
                    return False
            elif not t[i] in h.values():
                h[letter] = t[i]
            else:
                return False
        return True


print(Solution.isIsomorphic('egg', ' add'))
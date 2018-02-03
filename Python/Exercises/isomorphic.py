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
    def is_isomorphic(word_1, word_2):
        """
        :type word_1: str
        :type word_2: str
        :rtype: bool
        """
        if len(word_1) != len(word_2):
            return False
        characters = {}
        for i, letter in enumerate(word_1):
            if letter in characters:
                if characters[letter] != word_2[i]:
                    return False
            elif word_2[i] in characters.values():
                return False
            else:
                characters[letter] = word_2[i]
        return True


assert Solution.is_isomorphic('egg', 'add')
assert not Solution.is_isomorphic('foo', 'bar')
assert Solution.is_isomorphic('paper', 'title')

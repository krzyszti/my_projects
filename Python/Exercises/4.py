"""
Write a function that takes a character
(i.e. a string of length 1) and returns
True if it is a vowel, False otherwise.
"""

vowels = ('a', 'e', 'i', 'o', 'u', 'y')


def vowel(c):
    return c in vowels


print(vowel('a'))
print(vowel('b'))

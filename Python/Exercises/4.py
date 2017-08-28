"""
Write a function that takes a character
(i.e. a string of length 1) and returns
True if it is a vowel, False otherwise.
"""

vowels = ('a', 'e', 'i', 'o', 'u', 'y')


def vowel(c):
    return c in vowels


assert (vowel('a'))
assert (not vowel('b'))


def vowel_lambda(x): return x in vowels  # vowel_lambda = lambda x: x in vowels


assert (vowel_lambda('a'))
assert (not vowel_lambda('b'))

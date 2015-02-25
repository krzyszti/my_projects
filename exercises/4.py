'''Write a function that takes a character
(i.e. a string of length 1) and returns
True if it is a vowel, False otherwise.
'''
vowels = ['a', 'e', 'i', 'o', 'u', 'y']


def vowel(c):
    if c in vowels:
            return True
    else:
        return False

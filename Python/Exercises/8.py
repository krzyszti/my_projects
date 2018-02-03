"""
Define a function is_palindrome() that recognizes
palindromes (i.e. words that look the same written backwards).
For example, is_palindrome("radar") should return True.
"""


def is_palindrome(word):
    return word == word[::-1]


assert is_palindrome('kayak')
assert (not is_palindrome('beton'))


def is_palindrome_lambda(x): return x == ''.join(reversed(x))  # is_palindrome_lambda = lambda x: x == x[::-1]


assert (is_palindrome_lambda('kayak'))
assert (not is_palindrome_lambda('beton'))

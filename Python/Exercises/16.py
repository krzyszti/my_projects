"""
Write a function filter_long_words()
that takes a list of words and an
integer n and returns the list of words
that are longer than n.
"""


def filter_long_words(words, n):
    result = []
    for word in words:
        if len(word) > n:
            result.append(word)
    return result

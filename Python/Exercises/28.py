"""
Write a function find_longest_word()
that takes a list of words and returns
the length of the longest one.
Use only higher order functions.
"""
WORDS = ['1', '12', '123', '1234', '12345']


def find_longest_word(lst): return len(max(lst, key=len))


assert 5 == find_longest_word(WORDS)
assert 4 == find_longest_word(WORDS[:-1])

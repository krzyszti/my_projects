"""
Write a function filter_long_words()
that takes a list of words and an
integer n and returns the list of words
that are longer than n.
"""
WORDS_LIST = ('1', '12', '123', '1234', '12345')



# List Comprehension
def filter_long_words(words, n):
    return [w for w in words if len(w) > n]


assert '1' not in filter_long_words(WORDS_LIST, 3)
assert '12' not in filter_long_words(WORDS_LIST, 3)
assert '123' not in filter_long_words(WORDS_LIST, 3)
assert '1234' in filter_long_words(WORDS_LIST, 3)
assert '12345' in filter_long_words(WORDS_LIST, 3)


# Filter plus lambda
def filter_long_words_lambda(words, n): return list(filter(lambda x: len(x) > n, words))


assert '1' not in filter_long_words_lambda(WORDS_LIST, 3)
assert '12' not in filter_long_words_lambda(WORDS_LIST, 3)
assert '123' not in filter_long_words_lambda(WORDS_LIST, 3)
assert '1234' in filter_long_words_lambda(WORDS_LIST, 3)
assert '12345' in filter_long_words_lambda(WORDS_LIST, 3)

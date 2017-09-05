"""
Write a function is_anagram() that takes two string arguments and returns if the words are anagrams.
Input

'raska' 'rakas'
Output

True
"""
from collections import Counter


def is_anagram(word_1, word_2):
    w_1 = ''.join(word_1.lower().split())
    w_2 = ''.join(word_2.lower().split())
    if len(w_1) == len(w_2):
        return Counter(w_1) == Counter(w_2)
    else:
        return False


assert (is_anagram('raska', 'rakas'))  # Anagrams
assert (is_anagram('raska', 'Rakas'))  # Anagrams with capital leters
assert (is_anagram('raska', 'rak as'))  # Anagrams with spaces
assert not (is_anagram('pies', 'kot'))  # Words with different len
assert not (is_anagram('pies', 'kots'))  # Words with same length but not anagrams

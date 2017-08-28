"""
A hapax legomenon (often abbreviated to hapax)
is a word which occurs only once in either the
written record of a language, the works of an author,
or in a single text. Define a function that given
the file name of a text will return all its hapaxes.
Make sure your program ignores capitalization.
"""


def text_converter(raw_text): return [''.join(ch for ch in word if ch.isalnum()).lower() for word in raw_text.split()]


def hapax(text): return [word for word in text if text.count(word) == 1]


def hapax_file(file_name):
    with open(file_name, 'r') as file_handle:
        return hapax(text_converter(file_handle.read()))


test_text = '''A hapax legomenon (often abbreviated to hapax)
is a word which occurs only once in either the
written record of a language, the works of an author,
or in a single text. Define a function that given
the file name of a text will return all its hapaxes.
Make sure your program ignores capitalization.'''

test_results = hapax(text_converter(test_text))

assert 'legomenon' in test_results
assert 'word' in test_results
assert not 'a' in test_results

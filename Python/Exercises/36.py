'''
A hapax legomenon (often abbreviated to hapax)
is a word which occurs only once in either the
written record of a language, the works of an author,
or in a single text. Define a function that given
the file name of a text will return all its hapaxes.
Make sure your program ignores capitalization.
'''


def hapax(file_name):
    with open(file_name, 'r') as file_handle:
        file = file_handle.read().split('\n')
        text = []
        for line in file:
            for word in line.split(' '):
                text.append(word.lower())
        result = []
        for word in text:
            if text.count(word) == 1:
                result.append(word)
        return result

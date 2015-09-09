'''
Represent a small bilingual lexicon as a Python dictionary
in the following fashion {"merry":"god", "christmas":"jul", "and":"och", "happy":gott", "new":"nytt", "year":"år"} a
nd use it to translate your Christmas cards from English into Swedish.
That is, write a function translate() that takes a list of English words and returns a list of Swedish words.
'''
words = {"merry": "god", "christmas": "jul", "and": "och", "happy": "gott", "new": "nytt", "year": "år"}


def translate(lst):
    result = []
    for word in lst:
        result.append(words[word])
    return result

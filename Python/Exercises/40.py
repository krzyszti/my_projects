'''
An anagram is a type of word play, the result of rearranging
the letters of a word or phrase to produce a new word or phrase,
using all the original letters exactly once; e.g., orchestra = carthorse,
A decimal point = I'm a dot in place. Write a Python program that,
when started
1) randomly picks a word w from given list of words,
2) randomly permutes w (thus creating an anagram of w),
3)presents the anagram to the user,
4) enters an interactive loop in which the user is invited to
guess the original word. It may be a good idea to work with (say)
colour words only.
The interaction with the program may look like so:

Colour word anagram: onwbr
Guess the colour word!
black
Guess the colour word!
brown
Correct!
'''
import random, sys

WORDS = ('Brown', 'green', 'blue')


def random_word(words): return random.choice(words).lower()


def shuffle_word(word):
    random.shuffle(word)
    return ''.join(word)


def game():
    word = random_word(WORDS)
    anagram_word = shuffle_word(list(word))
    print("Word anagram: {}".format(anagram_word))
    guess = input("Guess the word: ")
    while guess.lower() != word:
        guess = input("Guess the word: ")
    print("Correct!")


def main():
    game()


if __name__ == '__main__':
    sys.exit(main())

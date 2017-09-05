"""

Define a procedure histogram() that takes a list of
integers and prints a histogram to the screen.
For example, histogram([4, 9, 7]) should print the following:

****
*********
*******

"""


def histogram(h_list, character='*'):
    [print(i * character) for i in h_list]


def hi(*args, character='*'):
    a = []
    for e in args:
        a.append(e * character)
    print(' '.join(a))

hi(4,9,7)
# histogram([4, 9, 7])

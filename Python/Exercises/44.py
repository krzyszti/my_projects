'''
 Your task in this exercise is as follows:

    Generate a string with N opening brackets ("[") and N closing brackets ("]"),
    in some arbitrary order.
    Determine whether the generated string is balanced;
    that is, whether it consists entirely of pairs of opening/closing
    brackets (in that order), none of which mis-nest.

Examples:

   []        OK   ][        NOT OK
   [][]      OK   ][][      NOT OK
   [[][]]    OK   []][[]    NOT OK
'''
import random
import sys


def generate(m):
    result = list(m * '[' + m * ']')
    random.shuffle(result)
    result = ''.join(result)
    return result


def check(brackets):
    opened = 0
    for b in brackets:
        if opened == 0 and b == ']':
            return False
        if b == '[':
            opened += 1
        if b == ']':
            opened -= 1
    if opened == 0:
        return True
    else:
        return False


def main():
    tests_number = 10   # positive int
    max_len = 3        # minimum 1
    for i in range(0, tests_number):
        test_subject = generate(max_len)
        print(test_subject, check(test_subject))
    return 0

if __name__ == '__main__':
    sys.exit(main())

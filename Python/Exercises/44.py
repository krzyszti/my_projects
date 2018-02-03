"""
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
"""
import random
import sys


def generate(number):
    """
    :param number: string
    :return: bool
    """
    pairs = list(number * '[' + number * ']')
    random.shuffle(pairs)
    result = ''.join(pairs)
    return result


def check(brackets):
    opened = 0
    for bracket in brackets:
        if bracket == '[':
            opened += 1
        elif bracket == ']':
            if opened < 1:
                return False
            else:
                opened -= 1
    if opened == 0:
        return True
    else:
        return False


assert check('[]')
assert check('[][]')
assert check('[[][]]')
assert not check('][')
assert not check('][][')
assert not check('[]][[]')


def main():
    tests_number = 10  # positive int
    max_len = 3  # minimum 1 number of bracket pairs
    for i in range(0, tests_number):
        test_subject = generate(max_len)
        print(test_subject, check(test_subject))
    return 0


if __name__ == '__main__':
    sys.exit(main())

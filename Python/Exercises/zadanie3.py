"""
NALEŻY WYGENEROWAĆ LISTĘ LICZB OD 2 DO 5.5 ZE SKOKIEM CO 0.5, DANE WYNIKOWE MUSZĄ BYĆ TYPU DECIMAL.
"""
import sys


def generate_list(frm, to, jump):
    return [jump * n for n in range(int(frm * 2), int(to * 2) + 1)]


def main():
    numbers_list = generate_list(2, 5.5, 0.5)
    print(numbers_list)


if __name__ == '__main__':
    sys.exit(main())

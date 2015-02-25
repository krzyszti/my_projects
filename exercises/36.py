'''
Write a version of a palindrome recogniser that accepts
a file name from the user, reads each line,
and prints the line to the screen if it is a palindrome.
'''
import sys


def palindrome(word):
    if word == word[::-1]:
        return True
    else:
        return False


def main():
    file_path = input('Please enter file path:')  # raw_input in Python 2
    with open(file_path, 'r') as file_handle:
        for line in file_handle:
            word = line.rstrip()
            if palindrome(word):
                print(word)

if __name__ == '__main__':
    sys.exit(main())

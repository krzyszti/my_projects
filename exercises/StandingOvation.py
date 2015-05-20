'''
Input
4
4 11111
1 09
5 110011
0 1

	
Output
Case #1: 0
Case #2: 1
Case #3: 2
Case #4: 0
'''
import sys

def prim(n, number):
    n = int(n)
    tab = str(number)
    tab = list(tab)
    i = 0
    sum = 0
    while i < n:
        sum += int(tab[i])
        i += 1
    f = n - sum
    if f < 0:
        f = 0
    return f

def main():
    T = int(input())
    i = 0
    while i < T:
        inp = input()
        n, number = inp.split(' ')
        f = prim(n, number)
        print("Case #"+str(i+1)+": "+str(f))
        i += 1


if __name__ == "__main__":
    sys.exit(main())

'''
Problem from
https://code.google.com/codejam/contest/6224486/dashboard

It's opening night at the opera, and your friend is the prima donna (the lead female singer). You will not be in the audience, but you want to make sure she receives a standing ovation -- with every audience member standing up and clapping their hands for her.

Initially, the entire audience is seated. Everyone in the audience has a shyness level. An audience member with shyness level Si will wait until at least Si other audience members have already stood up to clap, and if so, she will immediately stand up and clap. If Si = 0, then the audience member will always stand up and clap immediately, regardless of what anyone else does. For example, an audience member with Si = 2 will be seated at the beginning, but will stand up to clap later after she sees at least two other people standing and clapping.

You know the shyness level of everyone in the audience, and you are prepared to invite additional friends of the prima donna to be in the audience to ensure that everyone in the crowd stands up and claps in the end. Each of these friends may have any shyness value that you wish, not necessarily the same. What is the minimum number of friends that you need to invite to guarantee a standing ovation?

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

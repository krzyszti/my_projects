"""
Problem from
https://code.google.com/codejam/contest/6224486/dashboard

Both small and large outputs were accepted by the Judge

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
"""
import sys


def prim(number):
    result = 0
    if number.count('0') != 0:
        number_list = list(map(int, number))
        for i, n in enumerate(number_list):
            if not n:
                if sum(number_list[:i]) + result <= i:
                    result += 1
    return result


def main():
    t = int(input())
    i = 1
    while i <= t:
        n, number = input().split(' ')
        f = prim(number)
        print("Case #{}: {}".format(i, f))
        i += 1


def prim_test():
    test_cases = 4
    test_input = [
        '4 11111',
        '1 09',
        '5 110011',
        '0 1'
    ]
    i = 0
    results = []
    expected_results = [
        'Case #1: 0',
        'Case #2: 1',
        'Case #3: 2',
        'Case #4: 0'
    ]
    while i < test_cases:
        n, number = test_input[i].split(' ')
        f = prim(number)
        i += 1
        results.append("Case #{}: {}".format(i, f))
    assert results == expected_results


if __name__ == "__main__":
    prim_test()
    sys.exit(main())

"""
https://codility.com/programmers/challenges/alpha2010

A non-empty zero-indexed array A consisting of N integers is given. The first covering prefix of array A is the smallest integer P such that 0≤P<N and such that every value that occurs in array A also occurs in sequence A[0], A[1], ..., A[P].

For example, the first covering prefix of the following 5−element array A:

    A[0] = 2
    A[1] = 2
    A[2] = 1
    A[3] = 0
    A[4] = 1

is 3, because sequence [ A[0], A[1], A[2], A[3] ] equal to [2, 2, 1, 0], contains all values that occur in array A.

Write a function

    def solution(A)

that, given a zero-indexed non-empty array A consisting of N integers, returns the first covering prefix of A.

For example, given array A such that

    A[0] = 2
    A[1] = 2
    A[2] = 1
    A[3] = 0
    A[4] = 1

the function should return 3, as explained above.

Assume that:

        N is an integer within the range [1..1,000,000];
        each element of array A is an integer within the range [0..N−1].

Complexity:

        expected worst-case time complexity is O(N);
        expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

Elements of input arrays can be modified.

---
# 76% solution
def solution(A):
    i = -1
    while i >= -len(A):
        if A[:i].count(A[i]) == 0:
            return A.index(A[i])
        i -= 1
---
# 88% solution
def solution(A):
    i = -1
    while i >= -len(A):
        if A[i] in A[:i]:
            i -= 1
        else:
            return A.index(A[i])
---
# 96% solution
def solution(A):
    i = 0
    a = list(A)
    while i < len(a):
        v = A.pop()
        if not(v in A):
            return a.index(v)
        i += 1
"""
from collections import Counter


def solution(A):
    v = Counter()
    i = 0
    for e in A:
        if not (e in v):
            v[e] += 1
            i = e
    return A.index(i)


A = [2, 2, 1, 0, 1, 8, 9, 9, 9]

print(solution(A))

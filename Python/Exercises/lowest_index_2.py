"""
My friend wrote solution to lowest_index in c++
this program will be an example of rewrote algorithm in python

Author: Maciej Zieniuk
int solution(vector<int> &A) {
    vector<int> v(A.size(),-1);
    for(int i = 0 ; i < A.size(); i++){
        int a = A[i];
        if(v[a]==-1){
            v[a] = i;
        }
    }
    int lastIndex = -1;
    for(int i : v){
        if(i > lastIndex){
            lastIndex = i;
        }
    }
    return lastIndex;
}
"""


def solution(A):
    v = [-1] * len(A)
    for i in range(0, len(A)):
        a = A[i]
        if v[a] == -1:
            v[a] = i
    lastIndex = -1
    for i in v:
        if i > lastIndex:
            lastIndex = i
    return lastIndex

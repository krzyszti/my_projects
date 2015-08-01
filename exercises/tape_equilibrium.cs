using System;
using System.Linq;

class Solution {
    public int solution(int[] A) {
        int s = A.Sum()-A[0];
        int r = A[0];
        int result = Math.Abs(s-r);
        for(int i=1;i < A.Length - 1;i++){
            s = s - A[i];
            r = r+ A[i];
            if (Math.Abs(s-r)<result){
                result = Math.Abs(s-r);
            }
        }
        return result;
    }
}

class Solution {
public:
    int mySqrt(int x) {
        if(x==1) return 1;
        int left = 0;
        int right = x;
        while(left <= right){
            long i= (left+right)/2;
            if(i*i == x){
                return i;
            }
            if(i*i > x){
                right = i-1;
            }
            else left=i+1;
            
        }
        return right;
    }
};

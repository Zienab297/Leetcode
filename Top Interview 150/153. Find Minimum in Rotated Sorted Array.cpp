class Solution {
public:
    int findMin(vector<int>& nums) {
        int right = nums.size() - 1;
        int left = 0;
        while (right > left){
            int mid = (left + right) / 2;
            if(nums[mid] > nums[right] ){
                left = mid+1;
            }
            else{
                right = mid;
            }
        }
        return nums[left];
    }
};

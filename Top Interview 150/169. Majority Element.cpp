class Solution {
public:
    int majorityElement(vector<int>& nums) {
        map<int, int> x = {{0,0}};
        int max= nums.size() / 2;
        for(int i=0; i<nums.size(); i++){
            x[nums[i]]++;
            if(x[nums[i]] > max){
                return nums[i];
            }
        }
        return 0;
    }
};

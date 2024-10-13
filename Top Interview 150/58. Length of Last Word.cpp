class Solution {
public:
    int lengthOfLastWord(string s) {
        int count=0;
        int len = s.length()-1;
        for(int i= len; i >= 0; i--){
            if (s[i] != ' '){
                break;
            }
            len--;
        }
        for(int i= len; i >= 0; i--){
            if(s[i] != ' '){
                count++;
            }
            else break;
        }
        return count;
    }
};

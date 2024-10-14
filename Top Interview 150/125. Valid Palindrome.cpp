class Solution {
public:
    bool isPalindrome(string s) {
        string s1=""; string s2="";
        for(int i=0; i<s.length(); ++i){
            if((s[i]>='a' && s[i]<='z') ||(s[i]>='0' && s[i]<='9') || (s[i]>='A' && s[i]<='Z')){
                s1+=tolower(s[i]);
            }
        }
        for(int j=s.length()-1; j>=0; --j){
            if((s[j]>='a' && s[j]<='z') ||(s[j]>='0' && s[j]<='9') || (s[j]>='A' && s[j]<='Z')){
                s2+=tolower(s[j]);
            }
        }
        if(s1==s2){
            return true;
        }
        return false;

    }
};

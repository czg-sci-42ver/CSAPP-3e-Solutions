#include <vector>
#include <iostream>
class Solution {
public:
    int removeDuplicates(std::vector<int>& nums) {
        for(int index=1;index<nums.size();index++){
            if(nums[index]==nums[index-1]){
                for(int tmp=index;tmp<nums.size();tmp++){
                    
                }
            }
        }
        return 1;
    }
};
int main(){
    return 0;
}
#include <assert.h>
#include <vector>
#include <iostream>
class Solution {
public:
    int removeDuplicates(std::vector<int>& nums) {
        // **
        // if(nums.size() == 0 || nums.empty() == true) return 0;

        // int slow_index = 0;
        // int fast_index = 1;
        // while (fast_index<nums.size()) {
        //     // if (nums[slow_index]==nums[fast_index]) {
        //     //     fast_index++;
        //     // }
        //     // else {
        //     //     nums[++slow_index]=nums[fast_index++];
        //     // }
        //     if (nums[slow_index]!=nums[fast_index]) {
        //         nums[++slow_index]=nums[fast_index];
        //     }
        //     fast_index++;
        //     // else {
        //     //     nums[++slow_index]=nums[fast_index++];
        //     // }

        // }
        // return slow_index+1;


        return process(nums,2);
    }
    int process(std::vector<int>& nums,int k){
        int idx = 0;
        for(auto x : nums){
            if(idx < k or nums[idx - k] != x){
                nums[idx++] = x;
            }
        }
        // std::cout << nums << std::endl;
        return idx;  
    }
};
int main(){
    std::vector<int> test_nums = {1,2,2,1,1,2,2,1,1};
    Solution test_solution;
    assert(test_solution.removeDuplicates(test_nums)==9);
    return 0;
}
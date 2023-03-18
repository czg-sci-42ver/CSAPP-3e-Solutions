#include <iostream>
#include <iterator>
#include <ostream>
#include <unordered_map>
#include <vector>
using namespace std;
class Solution
{
public:
  int findRepeatNumber(std::vector<int>& nums)
  {
    std::unordered_map<int, bool> map;

    for (int num : nums) {
      if (map[num])
        return num;
      std::cout << map.at(num) << std::endl;
      map[num] = true;
    }
    return -1;
  };
  bool findNumberIn2DArray(vector<vector<int>>& matrix, int target)
  {
    return matrix.size();
  }
};

int
main()
{
  Solution test_1;
  int a[7] = { 2, 3, 1, 0, 2, 5, 3 };
  vector<vector<int>> mat{ { 1, 4, 7, 11, 15 },
                           { 2, 5, 8, 12, 19 },
                           { 3, 6, 9, 16, 22 },
                           { 10, 13, 14, 17, 24 },
                           { 18, 21, 23, 26, 30 } };
  std::cout << mat.size() << std::endl;
  //通过数组a的地址初始化，注意地址是从0到5（左闭右开区间）
  std::vector<int> nums(a, a + 5);
  return test_1.findRepeatNumber(nums);
}
#include <iostream>

using namespace std;

/*
    dfs(3): 4
        max(dfs(2), dfs(1) + nums[3]) max(4, 2 + 1) = 4
            dfs(2): 4
                max(dfs(1), dfs(0) + nums[2]) max(2, 1 + 3)
                    dfs(1): 2
                        max(dfs(0), dfs(-1) + nums[1])
                            dfs(0): 1
                                max(dfs(-1), dfs(-2) + nums[0])

                    dfs(0): 1
                        max(dfs(-1), dfs(-2) + nums[0])

            {1, 2, 3, 1};
            dfs(1): 2
                max(dfs(0), dfs(-1) + nums[1]) max(1, 0 + 2)
                        dfs(0): 1
                            max(dfs(-1), dfs(-2) + nums[0]) max(0, 0 + 1)

            dfs(-1): 0
            dfs(-2): 0
*/

// cách 1 đệ quy O(2^N)
int dfs1(int *nums, int i)
{
    if (i < 0)
    {
        return 0;
    }

    return max(dfs1(nums, i - 1), dfs1(nums, i - 2) + nums[i]);
}

void rob1(int *nums, int nums_size)
{
    int result = dfs1(nums, nums_size - 1);
    cout << result << endl;
}
// Cách 2 đệ quy có nhớ (tiếp cận từ trên xuống)
int dfs2(int *nums, int i, int *mem)
{
    if (i < 0)
    {
        return 0;
    }

    if (mem[i] != -1)
    {
        return mem[i];
    }

    mem[i] = max(dfs2(nums, i - 1, mem), dfs2(nums, i - 2, mem) + nums[i]);
    return mem[i];
}

void rob2(int *nums, int nums_size)
{
    int *mem = new int[nums_size];
    for (int i = 0; i < nums_size; i++)
    {
        mem[i] = -1;
    }
    int result = dfs2(nums, nums_size - 1, mem);
    cout << result << endl;
}

// Cách 3: tiếp cận từ dưới lên
/*        -2 -1 0 1 2 3
    dp = [0, 0, 1, 2, 4, 4]

    dfs(0) = max(dfs(-1), dfs(-2) + nums[0])
    dfs(1) = max(dfs(0), dfs(-1) + nums[1])
    dfs(2) = max(dfs(1), dfs(0) + nums[2])
    dfs(3) = max(dfs(2), dfs(1) + nums[3])

    dp[i] = max(dp[i - 1], dp[i - 2] + nums[i - 1])
*/

void rob3(int *nums, int nums_size)
{
    int *dp = new int[nums_size + 1];
    dp[0] = 0;
    dp[1] = nums[0];

    for (int i = 2; i <= nums_size + 1; i++)
    {
        dp[i] = max(dp[i - 1], dp[i - 2] + nums[i - 1]);
    }

    for (int i = 0; i < nums_size + 1; i++)
    {
        cout << dp[i] << " ";
    }
    cout << endl;

    int result = dp[nums_size + 1];
    cout << result << endl;
}

int main()
{
    int nums[] = {2, 7, 9, 3, 1};
    int nums_size = sizeof(nums) / sizeof(nums[0]);

    rob3(nums, nums_size);

    return 0;
}
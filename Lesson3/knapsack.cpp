#include <iostream>
using namespace std;

struct Item
{
    int weight;
    int value;
};

int knapsack(Item items[], int n, int max_weight)
{
    int dp[n + 1][max_weight + 1];

    for (int i = 0; i <= n; i++)
    {
        for (int j = 0; j <= max_weight; j++)
        {
            if (i == 0 || j == 0)
            {
                dp[i][j] = 0;
            }
            else
            {
                dp[i][j] = dp[i - 1][j];
                if (j > items[i].weight)
                {
                    dp[i][j] = max(dp[i][j], dp[i - 1][j - items[i].weight] + items[i].value);
                }
            }
        }
    }

    return dp[n][max_weight];
}

int main()
{
    Item items[] = {
        {2, 3},
        {3, 4},
        {4, 5},
        {5, 8},
    };

    int max_weight = 6;
    int n = sizeof(items) / sizeof(items[0]);

    int max_value = knapsack(items, n, max_weight);
    cout << "Tổng giá trị lớn nhất là: " << max_value << endl;

    return 0;
}
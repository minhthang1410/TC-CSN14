#include <iostream>
#include <math.h>
using namespace std;

int n, a[50][50] = {0};
int x[8] = {2, 2, 1, 1, -1, -1, -2, -2};
int y[8] = {1, -1, 2, -2, 2, -2, 1, -1};

void out()
{
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= n; j++)
        {
            cout << a[i][j] << "\t";
        }
        cout << endl;
    }
    cout << endl;
}

void solve(int i, int startX, int startY)
{
    int newX, newY;
    for (int t = 0; t < 8; t++)
    {
        newX = startX + x[t];
        newY = startY + y[t];
        if (newX >= 1 && newX <= n && newY >= 1 && newY <= n && a[newX][newY] == 0)
        {
            a[newX][newY] = i;
            if (i < n * n)
            {
                solve(i + 1, newX, newY);
                a[newX][newY] = 0;
            }
            else
            {
                cout << "end" << endl;
                out();
            }
        }
    }
}

int main()
{

    int startX, startY;
    cin >> n >> startX >> startY;
    a[startX][startY] = 1;
    solve(2, startX, startY);

    return 0;
}
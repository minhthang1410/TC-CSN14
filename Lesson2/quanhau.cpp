#include <iostream>

#define SIZE 8

using namespace std;

int queens[SIZE] = {0};
int dem = 0;

void output()
{
    dem++;
    for (int i = 0; i < SIZE; i++)
    {
        for (int j = 0; j < SIZE; j++)
        {
            if (queens[i] == j)
            {
                cout << "H ";
            }
            else
            {
                cout << "- ";
            }
        }
        cout << endl;
    }
    cout << endl;
}

bool KiemTra(int i, int j)
{
    for (int k = 0; k < i; k++)
    {
        // if (abs(k - i) == abs(queens[k] - j) || queens[k] == j)
        // {
        //     return false;
        // }
        if (k - i == queens[k] - j || k - i == j - queens[k] || queens[k] == j)
        {
            return false;
        }
    }
    return true;
}

void XepHau(int i)
{
    for (int j = 0; j < SIZE; j++)
    {
        if (KiemTra(i, j) == true)
        {
            queens[i] = j;
            if (i == SIZE - 1)
            {
                output();
            }
            else
            {
                XepHau(i + 1);
            }

            queens[i] = 0;
        }
    }
}

int main()
{
    XepHau(0);

    cout << "Có " << dem << " cách xếp hậu" << endl;
    return 0;
}
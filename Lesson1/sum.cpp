#include <iostream>

using namespace std;

int sumRecursive(int n)
{
    if (n == 0)
    {
        return 0;
    }
    else
    {
        return n + sumRecursive(n - 1);
    }
}

int sum(int n)
{
    int sum = 0;
    for (int i = 0; i <= n; i++)
    {
        sum += i;
    }
    return sum;
}

int main()
{
    int n;
    cout << "Nhap n: ";
    cin >> n;
    cout << "Tong cac so tu 1 den " << n << " la: " << sum(n) << endl;
    return 0;
}

#include <iostream>

using namespace std;

double powerRecursive(double x, int n)
{
    if (n == 0)
    {
        return 1;
    }
    else if (n > 0)
    {
        return x * powerRecursive(x, n - 1);
    }
    else
    {
        return 1.0 / (x * powerRecursive(x, -n - 1));
    }
}

double power(double x, int n)
{
    double result = 1.0;

    if (n < 0)
    {
        x = 1.0 / x;
        n = -n;
    }

    for (int i = 0; i < n; i++)
    {
        result *= x;
    }

    return result;
}

int main()
{
    double x;
    int n;

    cout << "Nhap x: ";
    cin >> x;
    cout << "Nhap n: ";
    cin >> n;

    double result = power(x, n);

    cout << x << " ^ " << n << " = " << result << endl;

    return 0;
}

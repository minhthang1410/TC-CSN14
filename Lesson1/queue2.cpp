#include <iostream>
#include <queue>
#include <string>
#include <vector>

using namespace std;

vector<string> generateLuckyNumbers(int N)
{
    vector<string> luckyNumbers;
    queue<string> q;
    q.push("6");
    q.push("8");

    while (!q.empty())
    {
        string current = q.front();
        q.pop();

        if (current.length() <= N)
        {
            luckyNumbers.push_back(current);
            q.push(current + "6");
            q.push(current + "8");
        }
    }

    return luckyNumbers;
}

int main()
{
    int N;
    cout << "Nhập N: ";
    cin >> N;

    vector<string> luckyNumbers = generateLuckyNumbers(N);

    cout << "Các số lộc phát có không quá " << N << " chữ số:" << endl;
    for (const string &number : luckyNumbers)
    {
        cout << number << " ";
    }
    cout << endl;

    return 0;
}

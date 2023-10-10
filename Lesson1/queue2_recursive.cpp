#include <iostream>
#include <queue>
#include <string>
#include <vector>

using namespace std;

void generateLuckyNumbers(int N, string current, vector<string> &luckyNumbers)
{
    if (current.length() <= N)
    {
        luckyNumbers.push_back(current);
        generateLuckyNumbers(N, current + "6", luckyNumbers);
        generateLuckyNumbers(N, current + "8", luckyNumbers);
    }
}

int main()
{
    int N;
    cout << "Nhập N: ";
    cin >> N;

    vector<string> luckyNumbers;
    generateLuckyNumbers(N, "", luckyNumbers);

    cout << "Các số lộc phát có không quá " << N << " chữ số:" << endl;
    for (const string &number : luckyNumbers)
    {
        cout << number << " ";
    }
    cout << endl;

    return 0;
}

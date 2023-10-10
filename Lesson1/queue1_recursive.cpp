#include <iostream>
#include <queue>
#include <string>

using namespace std;

// Hàm đệ quy để tìm số nhỏ nhất chia hết cho N
string findSmallestMultiple(int N, queue<string> &q)
{
    if (N == 1)
    {
        return "0";
    }

    if (q.empty())
    {
        return ""; // Trả về chuỗi rỗng nếu không tìm thấy
    }

    string current = q.front(); // Lấy số đầu tiên trong hàng đợi
    q.pop();                    // Loại bỏ số đầu tiên

    long long num = stoll(current); // Chuyển đổi chuỗi thành số nguyên

    if (num % N == 0)
    { // Kiểm tra xem số hiện tại có chia hết cho N không
        return current;
    }
    else
    {
        // Thêm số 0 và số 9 vào số hiện tại và đưa vào hàng đợi
        q.push(current + "0");
        q.push(current + "9");
        return findSmallestMultiple(N, q); // Gọi đệ quy để tiếp tục tìm kiếm
    }
}

int main()
{
    int N;
    cout << "Nhập N: ";
    cin >> N;

    queue<string> q;
    q.push("9"); // Bắt đầu bằng số 9

    string result = findSmallestMultiple(N, q);

    cout << "Số nguyên dương nhỏ nhất chia hết cho " << N << " là: " << result << endl;

    return 0;
}

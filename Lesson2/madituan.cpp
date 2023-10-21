#include <iostream>

using namespace std;

const int N = 8;
int board[N][N];
int moveX[] = {2, 1, -1, -2, -2, -1, 1, 2};
int moveY[] = {1, 2, 2, 1, -1, -2, -2, -1};

bool isSafe(int x, int y)
{
    return (x >= 0 && y >= 0 && x < N && y < N && board[x][y] == -1);
}

bool solveKT(int x, int y, int moveCount)
{
    if (moveCount == N * N)
    {
        return true;
    }

    for (int i = 0; i < 8; i++)
    {
        int nextX = x + moveX[i];
        int nextY = y + moveY[i];

        if (isSafe(nextX, nextY))
        {
            board[nextX][nextY] = moveCount;
            if (solveKT(nextX, nextY, moveCount + 1))
            {
                return true;
            }
            else
            {
                board[nextX][nextY] = -1;
            }
        }
    }
    return false;
}

void printSolution()
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            cout << board[i][j] << "\t";
        }
        cout << endl;
    }
}

void init()
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            board[i][j] = -1;
        }
    }
}

int main()
{
    init();

    int startX, startY;
    cout << "Nhap toa do xuat phat (0-7) x: ";
    cin >> startX;
    cout << "Nhap toa do xuat phat (0-7) y: ";
    cin >> startY;

    if (startX < 0 || startY < 0 || startX >= N || startY >= N)
    {
        cout << "Toa do khong hop le." << endl;
        return 1;
    }

    board[startX][startY] = 0;

    if (solveKT(startX, startY, 1))
    {
        cout << "Loi giai co the nhu sau:" << endl;
        printSolution();
    }
    else
    {
        cout << "Khong co loi giai." << endl;
    }

    return 0;
}

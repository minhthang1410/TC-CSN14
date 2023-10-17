#include <iostream>
using namespace std;

const int N = 8;
int board[N][N]; // Bàn cờ
int moves[8][2] = {{2, 1}, {1, 2}, {-1, 2}, {-2, 1}, {-2, -1}, {-1, -2}, {1, -2}, {2, -1}};
bool check = false;

bool isValidMove(int x, int y)
{
    return (x >= 0 && x < N && y >= 0 && y < N);
}

void printBoard()
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            cout << board[i][j] << "\t";
        }
        cout << endl;
    }
    cout << "--------------------------------" << endl;
}

void init()
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            board[i][j] = 0;
        }
    }
}

void knightTour(int step, int i, int j)
{
    int inext, jnext;
    for (int n = 0; n < N; n++)
    {
        inext = i + moves[n][0];
        jnext = j + moves[n][1];
        if (isValidMove(inext, jnext) && board[inext][jnext] == 0)
        {
            board[inext][jnext] = step + 1;
            if (step == N * N - 1)
            {
                check = true;
            }
            else
            {
                knightTour(step + 1, inext, jnext);
                if (!check)
                {
                    board[inext][jnext] = 0;
                }
            }
        }
    }
}

int main()
{
    int i = 0;
    int j = 2;

    init();
    board[i][j] = 1;
    printBoard();
    knightTour(1, i, j);
    if (check)
    {
        printBoard();
    }
    else
    {
        cout << "Không có lời giải" << endl;
    }
    return 0;
}

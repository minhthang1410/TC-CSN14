#include <iostream>
#include <vector>

using namespace std;

class MonHang
{
public:
    string name;
    int price;
    int weight;
    int count;

    MonHang(string _name, int _price, int _weight)
    {
        name = _name;
        price = _price;
        weight = _weight;
        count = 0;
    }
};

void SapXepDanhSachMonHang(vector<MonHang> &danh_sach_mon_hang, int n)
{
    for (int i = 0; i < n - 1; i++)
    {
        for (int j = 0; j < n - i - 1; j++)
        {
            if (danh_sach_mon_hang[j].price < danh_sach_mon_hang[j + 1].price)
            {
                swap(danh_sach_mon_hang[j], danh_sach_mon_hang[j + 1]);
            }
        }
    }
}

void ChonMonHang(vector<MonHang> &danh_sach_mon_hang, int n, int trong_luong_toi_da)
{
    SapXepDanhSachMonHang(danh_sach_mon_hang, n);

    // for (int i = 0; i < n; i++)
    // {

    //     cout << danh_sach_mon_hang[i].name << " - " << danh_sach_mon_hang[i].price << endl;
    // }

    int tong_gia_tri = 0;

    for (int i = 0; i < n; i++)
    {
        while (danh_sach_mon_hang[i].weight <= trong_luong_toi_da)
        {
            trong_luong_toi_da -= danh_sach_mon_hang[i].weight;
            tong_gia_tri += danh_sach_mon_hang[i].price;
            danh_sach_mon_hang[i].count++;
        }
    }

    for (int i = 0; i < n; i++)
    {
        if (danh_sach_mon_hang[i].count > 0)
        {
            cout << danh_sach_mon_hang[i].name << " - " << danh_sach_mon_hang[i].count << endl;
        }
    }
    cout << "Tổng giá trị các món hàng: " << tong_gia_tri << endl;
}

int main()
{
    vector<MonHang> danh_sach_mon_hang;

    danh_sach_mon_hang.push_back(MonHang("Macbook", 40000, 6));
    danh_sach_mon_hang.push_back(MonHang("PS5", 18000, 4));
    danh_sach_mon_hang.push_back(MonHang("Iphone 15 pro", 35000, 2));
    danh_sach_mon_hang.push_back(MonHang("Tablet", 20000, 3));

    int trong_luong_toi_da = 23;

    int a[i][j];

    ChonMonHang(danh_sach_mon_hang, danh_sach_mon_hang.size(), trong_luong_toi_da);

    return 0;
}

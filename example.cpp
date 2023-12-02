#include <bits/stdc++.h>

using namespace std;

int main(int argc, char const *argv[])
{
    int n1, n2;

    cin >> n1 >> n2;

    if(n1 > n2)
        cout << "n1 is greater than n2" << endl;
    else if(n1 < n2)
        cout << "n2 is greater than n1" << endl;
    else
        cout << "n1 is equal to n2" << endl;


    return 0;
}

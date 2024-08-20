#include <iostream>
#include <list>
using namespace std;

void InsertionSort(list<int> &lst) {
    for (auto it = next(lst.begin()); it != lst.end(); ++it) {
        auto const insertion = *it;
        auto location = it;
        while (location != lst.begin() && *prev(location) > insertion) {
            *location = *prev(location);
            --location;
        }
        *location = insertion;
    }
}

int main() {
    int n;
    cout << "Enter the size of the list: ";
    cin >> n;

    list<int> lst;
    cout << "Enter the elements of the list: ";
    cout << endl;
    for (int i = 0; i < n; i++) {
        int element;
        cout << "element " << i << ": ";
        cin >> element;
        lst.push_back(element);
    }

    InsertionSort(lst);

    cout << "Sorted list: " << endl;
    for (const auto &item : lst) {
        cout << item << " ";
    }
    cout << endl;

    return 0;
}

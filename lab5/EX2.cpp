#include <iostream>
using namespace std;

int BinarySearch(int arr[], int left, int right, int midpoint) {
    while (left <= right) {
        int mid = (left + right) / 2;
        if (midpoint == arr[mid])
            return mid;
        if (midpoint > arr[mid])
            left = mid + 1;
        else
            right = mid - 1;
    }
    return left;
}

void InsertionSort(int arr[], int n) {
    for (int i = 1; i < n; i++) {
        int midpoint = arr[i];
        int pos = i - 1;

        int insertPosition = BinarySearch(arr, 0, pos, midpoint);

        while (pos >= insertPosition) {
            arr[pos + 1] = arr[pos];
            pos--;
        }
        arr[pos + 1] = midpoint;
    }
}

int main() {
    int n;
    cout << "Enter the size of the array: ";
    cin >> n;

    int arr[n];
    cout << "Enter the elements of the array: ";
    cout<<endl;
    for (int i = 0; i < n; i++) {
        cout<<"arr["<<i<<"]"<<endl;
        cin >> arr[i];
    }

    InsertionSort(arr, n);

    cout << "Sorted array: " << endl;
    for (int i = 0; i < n; i++) {
        cout <<arr[i] << " ";
    }
    cout << endl;

    return 0;
}

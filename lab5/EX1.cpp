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

void numberarray(int arr[], int n) {
    for (int i = 0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;
}

void insertNewValue(int arr[], int &n, int midpoint) {
    int insertPos = BinarySearch(arr, 0, n - 1, midpoint);

    for (int i = n - 1; i >= insertPos; i--) {
        arr[i + 1] = arr[i];
    }

    arr[insertPos] = midpoint;
    n++;
}

int main() {
    int arr[] = {2, 3, 5, 6, 7};
    int n = sizeof(arr) / sizeof(arr[0]);
    int midpoint = 4;

    cout << "Array before sort:  \t";
    numberarray(arr, n);

    insertNewValue(arr, n, midpoint);
    cout << "Array after sort : \t ";
    numberarray(arr, n);

    return 0;
}

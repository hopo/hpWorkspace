#ifndef

#include <iostream>

using namespace std;

void reverse_number() {
	int n, reversedNumber = 0, remainder;

	cout << "Enter an integer: ";
	cin >> n;

	while(n !=0) {
		remainder = n % 10;
		reversedNumber = reversedNumber*10 + remainder;
		n /= 10;
	}

	cout << "Reversed Number = " << reversedNumber;
}

#endif

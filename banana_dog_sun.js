// 1

var start = "From the ground up!";

console.log(start);

// 2

function addTwo(num1, num2) {
	return num1 + num2;
}

// 3

var myNumber = 10;

// 4

function subtractTwo(num1, num2) {
	return num1 - num2;
}

// 5

if (myNumber == 10) {
	console.log('myNumber is 10');
}

// 6

function multiplyTwo(num1, num2) {
	return num1 * num2;
}

// 7

var myString = "From the ground up!";

// 8

function capitalizeFirst (str) {
	return str[0].toUpperCase() + str.slice(1);
}

// 9

if (myString == "From the ground up!") {
	console.log('myString is correct');
}

// 10

function divideTwo(num1, num2) {
	return num1 / num2;
}

// 11

console.log(addTwo(2, 3));

// 12

console.log(subtractTwo(5, 1));

// 13

if (myNumber > 9) {
	console.log('myNumber is greater than 9');
}

// 14

console.log(multiplyTwo(4, 4));

// 15 

console.log(capitalizeFirst(myString));

// 16

if (myString.length == 17) {
	console.log('myString is the correct length');
}

// 17

console.log(divideTwo(64, 4));

// 18

var myArray = [1, 2, 3];

// 19 

for (var i = 0; i < myArray.length; i++) {
	console.log('myArray[' + i + '] = ' + myArray[i]);
}

// 20

function reverseString (str) {
	var reversedStr = '';
	for (var i = str.length - 1; i >= 0; i--) {
		reversedStr += str[i];
	}
	return reversedStr;
}

// 21

if (myArray.length == 3) {
	console.log('myArray is of the correct length');
}

// 22

console.log(reverseString(myString));

// 23

function squareRoot (num) {
	return Math.sqrt(num);
}

// 24

var newNumber = 15;

// 25

if (myNumber < newNumber) {
	console.log('myNumber is lesser than newNumber');
}

// 26

console.log(squareRoot(16));

// 27

function factorial (num) {
	var fact = 1;
	for (var i = 1; i <= num; i++) {
		fact *= i;
	}
	return fact;
}

// 28

if (newNumber > myNumber) {
	console.log('newNumber is greater than myNumber');
}

// 29

console.log(factorial(5));

// 30

function isEven (num) {
	return num % 2 == 0;
}

// 31

if (myNumber % 2 == 0) {
	console.log('myNumber is even');
}

// 32

console.log(isEven(6));

// 33

function addArray(arr) {
	var sum = 0;
	for (var i = 0; i < arr.length; i++) {
		sum += arr[i];
	}
	return sum;
}

// 34

if (myArray.length > 0) {
	console.log('myArray is not empty');
}

// 35

console.log(addArray(myArray));

// 36

function subtractArray (arr) {
	var diff = arr[0];
	for (var i = 1; i < arr.length; i++) {
		diff -= arr[i];
	}
	return diff;
}

// 37

if (myArray[0] == 1) {
	console.log('myArray\' first element is 1');
}

// 38

console.log(subtractArray(myArray));

// 39

function isPrime (num) {
	if (num == 2) return true;
	for (var i = 2; i < Math.abs(num); i++) {
		if (num % i == 0) return false;
	}
	return true;
}

// 40

if (myArray[2] == 3) {
	console.log('myArray\' last element is 3');
}

// 41

console.log(isPrime(7));

// 42

function countVowels (str) {
	var count = 0;
	for (var i = 0; i < str.length; i++) {
		if (str[i] == 'a' || str[i] == 'e' || str[i] == 'i' ||
			str[i] == 'o' || str[i] == 'u') count++;
	}
	return count;
}

// 43

if (countVowels(myString) == 4) {
	console.log('myString contains 4 vowels');
}

// 44

console.log(countVowels(myString));

// 45

function power (num, pow) {
	var result = num;
	for (var i = 1; i < pow; i++) {
		result *= num;
	}
	return result;
}

// 46

var myName = "John";

// 47

for (var i = 0; i < myName.length; i++) {
	console.log('myName[' + i + '] = ' + myName[i]);
}

// 48

console.log(power(2, 3));

// 49

function isUpperCase (str) {
	return str.toUpperCase() == str;
}

// 50

if (isUpperCase(myName)) {
	console.log('myName is in upper case letters');
}

// 51

console.log(isUpperCase(myName));

// 52

function roundToNearestHundred (num) {
	return Math.round(num / 100) * 100;
}

// 53

if (roundToNearestHundred(120) == 100) {
	console.log('120 rounded to the nearest hundred is 100');
}

// 54

console.log(roundToNearestHundred(120));

// 55

function hasNumber (str) {
	for (var i = 0; i < str.length; i++) {
		if (str[i] >= 0 && str[i] <= 9) return true;
	}
	return false;
}

// 56

if (hasNumber(myString)) {
	console.log('myString contains a number');
}

// 57

console.log(hasNumber(myString));

// 58

function isDivisible (num1, num2) {
	return num1 % num2 == 0;
}

// 59

if (isDivisible(myNumber, 5)) {
	console.log('myNumber is divisible by 5');
}

// 60

console.log(isDivisible(myNumber, 5));

// 61

function findMax (arr) {
	if (arr.length == 0) return null;
	var max = arr[0];
	for (var i = 1; i < arr.length; i++) {
		if (arr[i] > max) max = arr[i];
	}
	return max;
}

// 62

if (findMax(myArray) == 3) {
	console.log('myArray\' maximum element is 3');
}

// 63

console.log(findMax(myArray));

// 64

function findMin (arr) {
	if (arr.length == 0) return null;
	var min = arr[0];
	for (var i = 1; i < arr.length; i++) {
		if (arr[i] < min) min = arr[i];
	}
	return min;
}

// 65

if (findMin(myArray) == 1) {
	console.log('myArray\' minimum element is 1');
}

// 66

console.log(findMin(myArray));

// 67

function sumLengths (arr) {
	var sum = 0;
	for (var i = 0; i < arr.length; i++) {
		sum += arr[i].length;
	}
	return sum;
}

// 68

if (sumLengths(myArray) == 3) {
	console.log('myArray\'s elements have a total length of 3');
}

// 69

console.log(sumLengths(myArray));

// 70

function isPalindrome (str) {
	var reversedStr = '';
	for (var i = str.length - 1; i >= 0; i--) {
		reversedStr += str[i];
	}
	return reversedStr == str;
}

// 71

if (isPalindrome('racecar')) {
	console.log('racecar is a palindrome');
}

// 72

console.log(isPalindrome('racecar'));

// 73

function findIndex (arr, elem) {
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] == elem) return i;
	}
	return -1;
}

// 74

if (findIndex(myArray, 2) == 1) {
	console.log('2 is at index 1 in myArray');
}

// 75

console.log(findIndex(myArray, 2));

// 76

function romanToDecimal (str) {
	var sum = 0;
	for (var i = 0; i < str.length; i++) {
		switch (str[i]) {
			case 'I':
				sum += 1;
				break;
			case 'V':
				sum += 5;
				break;
			case 'X':
				sum += 10;
				break;
			case 'L':
				sum += 50;
				break;
			case 'C':
				sum += 100;
				break;
			case 'D':
				sum += 500;
				break;
			case 'M':
				sum += 1000;
				break;
		}
		if (i > 0 && str[i] == 'V' && str[i - 1] == 'I') {
			sum -= 2;
		}
		if (i > 0 && str[i] == 'X' && str[i - 1] == 'I') {
			sum -= 2;
		}
		if (i > 0 && str[i] == 'L' && str[i - 1] == 'X') {
			sum -= 20;
		}
		if (i > 0 && str[i] == 'C' && str[i - 1] == 'X') {
			sum -= 20;
		}
		if (i > 0 && str[i] == 'D' && str[i - 1] == 'C') {
			sum -= 200;
		}
		if (i > 0 && str[i] == 'M' && str[i - 1] == 'C') {
			sum -= 200;
		}
	}
	return sum;
}

// 77

if (romanToDecimal('XI') == 11) {
	console.log('XI is equivalent to 11');
}

// 78

console.log(romanToDecimal('XI'));

// 79

function reverseArray (arr) {
	var reversedArr = [];
	for (var i = arr.length - 1; i >= 0; i--) {
		reversedArr.push(arr[i]);
	}
	return reversedArr;
}

// 80

if (reverseArray(myArray)[0] == 3) {
	console.log('myArray\' first element after reversal is 3');
}

// 81

console.log(reverseArray(myArray));

// 82

function findMostFrequent (arr) {
	var mostFrequentElem = arr[0];
	var maxFrequencies = 0;
	for (var i = 0; i < arr.length; i++) {
		var currElem = arr[i];
		var currFreq = 0;
		for (var j = 0; j < arr.length; j++) {
			if (arr[j] == currElem) currFreq++;
		}
		if (currFreq > maxFrequencies) {
			maxFrequencies = currFreq;
			mostFrequentElem = currElem;
		}
	}
	return mostFrequentElem;
}

// 83

if (findMostFrequent([1, 1, 2, 3, 4, 4]) == 1) {
	console.log('1 is the most frequent element in [1, 1, 2, 3, 4, 4]');
}

// 84

console.log(findMostFrequent([1, 1, 2, 3, 4, 4]));

// 85

function removeDuplicates (arr) {
	var nonDuplicates = [];
	for (var i = 0; i < arr.length; i++) {
		if (findIndex(nonDuplicates, arr[i]) == -1) {
			nonDuplicates.push(arr[i]);
		}
	}
	return nonDuplicates;
}

// 86

if (removeDuplicates([1, 1, 2, 3]).length == 3) {
	console.log('[1, 1, 2, 3
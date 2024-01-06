import 'dart:io';

void main() {
  // Q no: 1
  int i;
  for (i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("$i");
    }
  }

  // Q no: 2
  int n = 10;
  int a = 0, b = 1;

  print("Fibonacci sequence up to $n:");

  for (int i = 0; i < n; i++) {
    print(a);

    int next = a + b;
    a = b;
    b = next;
  }

  // Q no: 3
  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  int num = 17;

  if (isPrime(num)) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }

// Q no: 4
 List<int> data = [3, 9, 1, 6, 4, 2, 8, 5, 7];

  int largest = data[0];  

  for (int element in data) {
    if (element > largest) {
      largest = element;
    }
  }

  print("Largest element: $largest");

// Q no: 5
bool isPalindrome(String text) {
 text = text.toLowerCase(); 
 
 text = text.replaceAll(RegExp(r"[^a-zA-Z0-9]"), "");

 
 return text == text.split('').reversed.join();
}


 String name = "radar";
 if (isPalindrome(name)) {
   print("'$name' is a palindrome");
 } else {
   print("'$name' is not a palindrome");
 }

// Q no:6
for (int i = 1; i <= 4; i++) {
    String row = i.toString().repeat(i); 
    print(row);

  }

// Q no:7
 List<int> numbers = [1, 3, 7, 2, 8, 4, 6, 9];

   for (int number in numbers) {
     if (number > 5) {
       print(number);
     }
   }

// Q no:8
 String text = "This is a string with some vowels.";
  int vowelCount = 0;

  for (int i = 0; i < text.length; i++) {
    String character = text[i].toLowerCase(); 
    if (character == 'a' || character == 'e' || character == 'i' || character == 'o' || character == 'u') {
      vowelCount++;
    }
  }

  print("Number of vowels: $vowelCount");

// Q no:9
List<int> numbers = [5, 2, 9, 1, 8, 3];

  int max = numbers[0]; 
  int min = numbers[0]; 
  for (int number in numbers) {
    if (number > max) {
      max = number;
    } else if (number < min) {
      min = number;
    }
  }

  print("Maximum number: $max");
  print("Minimum number: $min");

// Q no:10
 List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sumOfSquares = 0;

  for (int number in numbers) {
    if (number % 2 != 0) {  
      sumOfSquares += number * number;  
    }
  }

  print("Sum of squares of odd numbers: $sumOfSquares");

// Q no:11
List<Map<String, dynamic>> studentDetails = [
    {'name': 'ALI', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
    {'name': 'AYESHA', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
    {'name': 'SAAD', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},
  ];

  for (Map<String, dynamic> student in studentDetails) {
    int totalMarks = 0;
    for (int mark in student['marks']) {
      totalMarks += mark;
    }
    double average = totalMarks / student['marks'].length;
    String grade;
    if (average >= 90) {
      grade = 'A';
    } else if (average >= 80) {
      grade = 'B';
    } else if (average >= 70) {
      grade = 'C';
    } else {
      grade = 'D';
    }
    print("${student['name']} (Roll No. ${student['rollNumber']}) - Grade: $grade");
  }
}
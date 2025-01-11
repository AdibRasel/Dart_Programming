void main() {
  // Arithmetic Operators (গাণিতিক অপারেটর)
  // এই অপারেটর গুলো ব্যবহার করে গাণিতিক কার্যক্রম পরিচালনা করা হয়।
  int a = 10;
  int b = 3;
  print('Addition: ${a + b}'); // যোগফল: 13
  print('Subtraction: ${a - b}'); // বিয়োগফল: 7
  print('Multiplication: ${a * b}'); // গুণফল: 30
  print('Division: ${a / b}'); // ভাগফল: 3.3333333333333335
  print('Modulus: ${a % b}'); // ভাগশেষ: 1

  // Relational/Comparison Operators (তুলনামূলক অপারেটর)
  // দুটি মানের মধ্যে সম্পর্ক যাচাই করতে ব্যবহার করা হয়।
  print('a > b: ${a > b}'); // a বড় b: true
  print('a < b: ${a < b}'); // a ছোট b: false
  print('a == b: ${a == b}'); // a সমান b: false
  print('a != b: ${a != b}'); // a অসমান b: true
  print('a >= b: ${a >= b}'); // a বড় বা সমান b: true
  print('a <= b: ${a <= b}'); // a ছোট বা সমান b: false

  // Logical Operators (যৌক্তিক অপারেটর)
  // যুক্তিবাচক কার্যক্রম পরিচালনার জন্য ব্যবহৃত হয়।
  bool x = true;
  bool y = false;
  print('x && y: ${x && y}'); // AND অপারেটর: false
  print('x || y: ${x || y}'); // OR অপারেটর: true
  print('!x: ${!x}'); // NOT অপারেটর: false

  // Bitwise Operators (বিটওয়াইজ অপারেটর)
  // বিট স্তরের কার্যক্রম পরিচালনার জন্য ব্যবহৃত হয়।
  int p = 5; // 0101 in binary
  int q = 3; // 0011 in binary
  print('p & q: ${p & q}'); // বিটওয়াইজ AND: 1 (0001)
  print('p | q: ${p | q}'); // বিটওয়াইজ OR: 7 (0111)
  print('p ^ q: ${p ^ q}'); // বিটওয়াইজ XOR: 6 (0110)
  print('~p: ${~p}'); // বিটওয়াইজ NOT: -6 (Two's complement)
  print('p << 1: ${p << 1}'); // বাম শিফট: 10 (1010)
  print('p >> 1: ${p >> 1}'); // ডান শিফট: 2 (0010)

  // Assignment Operators (অ্যাসাইনমেন্ট অপারেটর)
  // ভেরিয়েবলে মান অ্যাসাইন করতে ব্যবহৃত হয়।
  int num = 10;
  num += 5; // num = num + 5
  print('num += 5: $num'); // 15
  num -= 3; // num = num - 3
  print('num -= 3: $num'); // 12
  num *= 2; // num = num * 2
  print('num *= 2: $num'); // 24
  num ~/= 4; // num = num ~/ 4 (integer division)
  print('num ~/= 4: $num'); // 6
  num %= 5; // num = num % 5
  print('num %= 5: $num'); // 1

  // Conditional Operators (কন্ডিশনাল অপারেটর)
  // শর্ত অনুযায়ী মান প্রদান করতে ব্যবহৃত হয়।
  int age = 18;
  String eligibility = (age >= 18) ? 'Eligible' : 'Not Eligible';
  print('Ternary Operator: $eligibility'); // Eligible

  int? nullableNumber;
  print('Null Coalescing Operator: ${nullableNumber ?? 100}'); // যদি মান না থাকে, 100 প্রদান করবে

  // Type Test Operators (টাইপ টেস্ট অপারেটর)
  // ভেরিয়েবলের টাইপ পরীক্ষা করতে ব্যবহৃত হয়।
  var data = 'Hello';
  print('data is String: ${data is String}'); // ডেটা কি স্ট্রিং? true
  print('data is! int: ${data is! int}'); // ডেটা কি ইন্ট নয়? true

  // Increment and Decrement Operators (ইনক্রিমেন্ট এবং ডিক্রিমেন্ট অপারেটর)
  // মান এক ধাপ বৃদ্ধি বা হ্রাস করতে ব্যবহৃত হয়।
  int count = 0;
  print('Pre-Increment: ${++count}'); // বৃদ্ধি করার পর মান: 1
  print('Post-Increment: ${count++}'); // বর্তমান মান: 1, পরে বৃদ্ধি: 2
  print('Current Value: $count'); // বর্তমান মান: 2
  print('Pre-Decrement: ${--count}'); // হ্রাস করার পর মান: 1
  print('Post-Decrement: ${count--}'); // বর্তমান মান: 1, পরে হ্রাস: 0
  print('Current Value: $count'); // বর্তমান মান: 0

  // Cascade Operator (ক্যাসকেড অপারেটর)
  // একই অবজেক্টে একাধিক মেথড বা প্রপার্টি অ্যাক্সেস করতে ব্যবহৃত হয়।
  var person = Person()
    ..name = 'John'
    ..age = 30
    ..sayHello();

  // Spread Operator (স্প্রেড অপারেটর)
  // একটি তালিকার উপাদানকে অন্য তালিকায় যোগ করতে ব্যবহৃত হয়।
  var list1 = [1, 2, 3];
  var list2 = [...list1, 4, 5];
  print('Spread Operator: $list2'); // [1, 2, 3, 4, 5]

  // Null-aware Spread Operator (নাল-অবগত স্প্রেড অপারেটর)
  List<int>? nullableList;
  var list3 = [...?nullableList, 6, 7];
  print('Null-aware Spread Operator: $list3'); // [6, 7]
}

class Person {
  String? name = "Rasel Hossain Adib";
  int? age = 25;

  void sayHello() {
    // একটি ব্যক্তির পরিচিতি প্রদর্শন করে।
    print('Hello, my name is $name and I am $age years old.');
  }
}

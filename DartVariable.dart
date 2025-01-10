
void main() {
  // উদাহরণ 1: var ব্যবহার
  // var দিয়ে ভেরিয়েবল ডিফাইন করলে ডার্ট নিজে থেকে টাইপ নির্ধারণ করে।
  print("\n--- Example 1: var ---\n");
  var name = "Rasel"; // String টাইপ
  var age = 25; // int টাইপ
  var isMarried = true; // bool টাইপ

  print("Name: \$name");
  print("Age: \$age");
  print("Married: \$isMarried");

  // উদাহরণ 2: final ব্যবহার
  // final দিয়ে ডিফাইন করা ভেরিয়েবলের মান একবার সেট করলে তা পরিবর্তন করা যায় না।
  print("\n--- Example 2: final ---\n");
  final country = "Bangladesh"; // String টাইপ
  print("Country: \$country");

  // উদাহরণ 3: const ব্যবহার
  // const দিয়ে ডিফাইন করা ভেরিয়েবলের মান কম্পাইল টাইমেই স্থির থাকে।
  print("\n--- Example 3: const ---\n");
  const pi = 3.1416; // double টাইপ
  print("Value of PI: \$pi");

  // উদাহরণ 4: টাইপ উল্লেখ করে ভেরিয়েবল ব্যবহার
  // সরাসরি টাইপ উল্লেখ করে ভেরিয়েবল ডিফাইন করা যায়।
  print("\n--- Example 4: Typed Variables ---\n");
  String typedName = "Adib";
  int typedAge = 30;
  double salary = 50000.50;
  bool isActive = true;

  print("Name: \$typedName");
  print("Age: \$typedAge");
  print("Salary: \$salary");
  print("Active: \$isActive");

  // উদাহরণ 5: dynamic ব্যবহার
  // dynamic টাইপ ব্যবহার করলে একই ভেরিয়েবলে বিভিন্ন টাইপের মান রাখা যায়।
  print("\n--- Example 5: dynamic ---\n");
  dynamic value = "Hello, Dart!";
  print(value);

  value = 12345; // টাইপ পরিবর্তন করা হয়েছে
  print(value);

  value = true; // আবার টাইপ পরিবর্তন
  print(value);
}

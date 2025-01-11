void main() {

  // ===================== 1. Number Data Type ======================
  /* 
    Number ডেটা টাইপ মূলত দুটি প্রকার:
    1. Integer (পূর্ণসংখ্যা) - দশমিক ছাড়া সংখ্যা।
    2. Double (দশমিক সংখ্যা) - ভগ্নাংশ বা দশমিক সহ সংখ্যা।
  */

  var numberInteger = 10; // Integer ডেটা টাইপ উদাহরণ।
  var numberDouble = 40.4568; // Double ডেটা টাইপ উদাহরণ।

  print("Integer এবং Double যোগফল: ${numberInteger + numberDouble}");

  // ===================== 2. String Data Type ======================
  /* 
    String ডেটা টাইপ হল টেক্সট ডেটা ধারণ করার জন্য। 
    এটি একক (' ') বা দ্বৈত (" ") কোটেশনের মধ্যে লেখা হয়।
  */

  var myStringSingle = 'This is a single quotes string'; // একক কোটেশন।
  var myStringDouble = "This is double quotes string"; // দ্বৈত কোটেশন।

  print("Single Quotes String: $myStringSingle");
  print("Double Quotes String: $myStringDouble");

  // ===================== 3. Boolean Data Type ======================
  /* 
    Boolean ডেটা টাইপ শুধু দুইটি মান ধারণ করে: true অথবা false।
    এটি শর্ত যাচাই এবং লজিক্যাল অপারেশনের জন্য ব্যবহৃত হয়।
  */

  var negative = false; // False মান।
  var positive = true;  // True মান।

  print("Negative Boolean Value: $negative");
  print("Positive Boolean Value: $positive");

  // ===================== 4. List Data Type =========================
  /* 
    List ডেটা টাইপ হলো ডেটার একটি তালিকা। 
    এটি JavaScript এর Array এর মত কাজ করে।
    List ইনডেক্সিং 0 থেকে শুরু হয়।
  */

  var numberList = [1, 2, 3]; // একটি সাধারণ সংখ্যা তালিকা।
  print("Number List: $numberList");

  var cityList = ['Noakhali', 'Dhaka', 'Rangpur', 'Rajshahi', 'Khulna']; // শহরের তালিকা।
  print("City List: $cityList");

  // নির্দিষ্ট ইনডেক্সের মান প্রিন্ট করা।
  print("City at Index 0: ${cityList[0]}"); // প্রথম ইনডেক্স।
  print("City at Index 3: ${cityList[3]}"); // চতুর্থ ইনডেক্স।

  // ===================== 5. Map Data Type =========================
  /* 
    Map হলো একটি ডেটা স্ট্রাকচার যা কী-ভ্যালু (key-value) জোড়ায় ডেটা সংরক্ষণ করে। 
    এটি JavaScript এর Object এর মত কাজ করে।
  */

  var student = {
    'Name': 'Rasel Hossain', // কী: Name, ভ্যালু: Rasel Hossain।
    'Age': 25,              // কী: Age, ভ্যালু: 25।
    'Branch': 'Computer Science', // কী: Branch, ভ্যালু: Computer Science।
    'isMuslim': true        // কী: isMuslim, ভ্যালু: true।
  };

  print("Student Map: $student");

  // নির্দিষ্ট কী এর মান প্রিন্ট করা।
  print("Student Name: ${student['Name']}"); // Name কী এর মান।
  print("Student Branch: ${student['Branch']}"); // Branch কী এর মান।

  // ===================== 6. Runes Data Type =========================
  /* 
    Runes Dart-এ ইউনিকোড ক্যারেক্টার প্রকাশ করতে ব্যবহৃত হয়। 
    এটি ইমোজি, বিশেষ চিহ্ন বা অন্যান্য ইউনিকোড টেক্সট ম্যানিপুলেশনের জন্য ব্যবহৃত হয়।
  */

  var heartSymbol = Runes('\u2764'); // Unicode ব্যবহার করে হৃদয়ের চিহ্ন।
  print("Heart Symbol: ${String.fromCharCodes(heartSymbol)}");

  var smileyFace = Runes('\u263A'); // Unicode ব্যবহার করে স্মাইলি।
  print("Smiley Face: ${String.fromCharCodes(smileyFace)}");

  // ===================== 7. Symbol Data Type =========================
  /* 
    Symbol হলো একটি বিশেষ ডেটা টাইপ যা অনন্য নাম বা পরিচয় প্রকাশ করতে ব্যবহৃত হয়।
    এটি সাধারণত মেটা-প্রোগ্রামিং বা রিফ্লেকশন প্রক্রিয়ায় ব্যবহৃত হয়।
  */

  var symbolExample = #exampleSymbol; // একটি Symbol ডিফাইন করা।
  print("Symbol: $symbolExample");
}

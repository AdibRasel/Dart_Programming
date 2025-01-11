void main() {
  var Number = [1, 2, 3, 4, 5];
  Number[0] = 100; // ১ এর স্থলে ১০০ নির্দিষ্ট ইনডেক্সের মান পরিবর্তন করা
  Number[1] = 200; // ১ এর স্থলে ২০০ নির্দিষ্ট ইনডেক্সের মান পরিবর্তন করা
  Number[2] = 300; // ২ এর স্থলে ৩০০ নির্দিষ্ট ইনডেক্সের মান পরিবর্তন করা
  Number[3] = 400; // ৩ এর স্থলে ৪০০ নির্দিষ্ট ইনডেক্সের মান পরিবর্তন করা
  Number[4] = 500;  // ৪ এর স্থলে ৫০০ নির্দিষ্ট ইনডেক্সের মান পরিবর্তন করা

  // শেষ উপাদানটি সরিয়ে ফেলা
  Number.removeLast();
  print(Number); // [100, 200, 300, 400]

  // নির্দিষ্ট ইনডেক্সের উপাদানটি সরিয়ে ফেলা
  Number.removeAt(2);
  print(Number); // [100, 200, 400]

  // নির্দিষ্ট মানের প্রথম উপাদানটি সরিয়ে ফেলা
  Number.remove(100);
  print(Number); // [200, 400]

  // নির্দিষ্ট শর্ত পূরণকারী সব উপাদান সরিয়ে ফেলা
  Number.removeWhere((item) => item > 300);
  print(Number); // [200]

  // নতুন তালিকা তৈরি করা
  Number = [1, 2, 3, 4, 5];
  
  // নির্দিষ্ট শর্ত পূরণকারী উপাদানগুলো রেখে বাকি সব সরিয়ে ফেলা
  Number.retainWhere((item) => item % 2 == 0);
  print(Number); // [2, 4]

  // সব উপাদান সরিয়ে ফেলা
  Number.clear();
  print(Number); // []

  // Map তৈরি করা
  var student = {
    'name': 'Rasel Hossain Adib',
    'age': 20,
    'grade': 'A'
  };

  // মান আপডেট করা
  student['age'] = 25; // বয়স আপডেট করা
  student['grade'] = 'A+'; // গ্রেড আপডেট করা
  print(student); // {name: Rasel Hossain Adib', age: 25, grade: A+}

  // নির্দিষ্ট কী এর মান সরিয়ে ফেলা
  student.remove('age');
  print(student); // {name: Rasel Hossain Adib', grade: A+}

  // নির্দিষ্ট শর্ত পূরণকারী সব কী-মান জোড়া সরিয়ে ফেলা
  student.removeWhere((key, value) => key == 'grade');
  print(student); // {name: Rasel Hossain Adib',}

  // সব কী-মান জোড়া সরিয়ে ফেলা
  student.clear();
  print(student); // {}
}
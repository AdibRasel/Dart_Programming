import 'InheritanceFather.dart';

class Soon extends Father { // এক্সটেন্ড করে পিতার ক্লাস থেকে প্রপার্টি এবং মেথড ব্যবহার করা হয়েছে।
  // override
  TotalTaka(){ // মেথড ওভাররাইড করা হয়েছে।
    print("Total Cheler Amount = 200000"); // ছেলে চাইলে এ মান পরিবর্তন করতে পারবে। 
  }
}
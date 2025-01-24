abstract class Father { //  abstract ব্যবহার করলে অবজেক্ট তৈরি করা যাবে না। শুধু মাত্র উত্তরাধিকারী ক্লাস তৈরি করে ব্যবহার করা যাবে।
  // আবাস্ট্রাক্ট ক্লাস এর মাধ্যমে একটি ক্লাস থেকে অন্য ক্লাসের প্রপার্টি এবং মেথড ব্যবহার করা যায়।
  TotalTaka(){
    print("Total Babar Amount = 500000");
  }
}

class Soon extends Father { // এক্সটেন্ড করে পিতার ক্লাস থেকে প্রপার্টি এবং মেথড ব্যবহার করা হয়েছে।
  // override
  TotalTaka(){ // মেথড ওভাররাইড করা হয়েছে।
    print("Total Cheler Amount = 200000"); // ছেলে চাইলে এ মান পরিবর্তন করতে পারবে। 
  }
}

void main() {
  var SoonObject = new Soon();
  SoonObject.TotalTaka();
  // var FatherObject = new Father(); // abstract আবাস্ট্রাক্ট এর কারনে অবজেক্ট তৈরি করা যাবে না।
  // FatherObject.TotalTaka();
}
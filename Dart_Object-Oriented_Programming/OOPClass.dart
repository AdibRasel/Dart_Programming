
import 'ExternalClass.dart';

void main() {
  // Object creation (অবজেক্ট তৈরি) এক্সটার্নাল ক্লাস হলে আগে ইম্পোর্ট করতে হবে।
  var classCall = new MyClass(); // new কি-ওয়ার্ড ব্যবহার করা হয়েছে কিন্তু এটা ব্যবহার না করা হলে কোন সমস্যা নেই। new কি-ওয়ার্ড ব্যবহার করা বেস্ট প্র্যাকটিস।

  // Accessing properties and methods (প্রোপার্টিজ এবং মেথড অ্যাক্সেস করা)
  var myName = classCall.name; // ক্লাসের অবজেক্ট থেকে ভ্যারিয়েবল এক্সেস করা
  var myMobileNumber = classCall.mobileNumber; // ক্লাসের অবজেক্ট থেকে লিস্ট এক্সেস করা
  var myAddress = classCall.address; // ক্লাসের অবজেক্ট থেকে ম্যাপ এক্সেস করা

  // সকল তথ্য প্রিন্ট করা
  print('Name: $myName, My Number: $myMobileNumber, My Address: $myAddress');
  // রেজাল্ট: Name: Rasel Hossain Adib, My Number: [1934544352, 1626757897], My Address: {Home: Shibrampur, Shahapur, Chatkhil, Noakhali, Office: Dhaka, Bangladesh}
  
  classCall.submitButton(); // ক্লাসের অবজেক্ট থেকে মেথড এক্সেস করা
  // রেজাল্ট: Submit Button Clicked
}
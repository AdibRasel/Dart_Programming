
import 'ExternalClass.dart'; // এক্সটার্নাল ক্লাস ইম্পোর্ট করলে আর অবজেক্ট তৈরি করতে হবে না।

void main() {
  // var classCall = new MyClass(); // static ব্যবহার করলে অভজেক্ট তৈরি করতে হয় না।

  // static ব্যবহার কররতে হলে প্রথমে ইম্পোর্ট করতে হবে। 
  // তারপর ক্লাসের নাম দিয়ে ডট নোটেশন দিয়ে প্রোপার্টিজ এবং মেথড এক্সেস করতে হবে।
  var Name = MyClass.Name;
  print(Name);
  var SchoolName = MyClass.SchoolName;
  print(SchoolName);
  var Address = MyClass.Address;
  print(Address);
  // ignore: unused_local_variable
  var MobileNumber = MyClass.MobileNumber;
  // ignore: unused_local_variable
  var SubmitButton = MyClass.SubmitButton;

}  
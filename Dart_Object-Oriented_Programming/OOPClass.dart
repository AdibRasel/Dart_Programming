
import 'ExternalClass.dart';

void main() {
  // var classCall = new MyClass(); // static ব্যবহার করলে অভজেক্ট তৈরি করতে হয় না।

  // static ব্যবহার কররতে হলে প্রথমে ইম্পোর্ট করতে হবে। 
  // তারপর ক্লাসের নাম দিয়ে ডট নোটেশন দিয়ে প্রোপার্টিজ এবং মেথড এক্সেস করতে হবে।
  var Name = MyClass.Name;
  var SchoolName = MyClass.SchoolName;
  var Address = MyClass.Address;
  var MobileNumber = MyClass.MobileNumber;
  var SubmitButton = MyClass.SubmitButton;

}
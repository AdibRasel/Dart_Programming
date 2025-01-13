// একটা ক্লাসের ভিতরে ভ্যারিয়েবল, লিস্ট, ম্যাপ, এরে, অবজেক্ট এবং ফাংশন সব ধরনের ডাটা রাখা যায়।
// এবং একটা ক্লাসের ভিতরে আরো অনেক গুলো ক্লাস ডিক্লেয়ার করা যায়।
// প্রয়োজন অনুযায়ি ক্লাস থেকে সকল প্রোপার্টিজ এবং মেথড এক্সেস করা যায়।
class MyClass {

  static var Name = "Rasel Hossain Adib";
  static var SchoolName = "Shahapur M.L High School";
  static List MobileNumber = [01934544352, 01626757897];
  static Map Address = {
    'Home': 'Shibrampur, Shahapur, Chatkhil, Noakhali',
    'Office': 'Dhaka, Bangladesh'
  };
  static Function SubmitButton = () {
    print('Submit Button Clicked');
  };

  var name = "Rasel Hossain Adib";
  List mobileNumber = [01934544352, 01626757897];
  Map address = {
    'Home': 'Shibrampur, Shahapur, Chatkhil, Noakhali',
    'Office': 'Dhaka, Bangladesh'
  };

  // Method (মেথড)
  static void submitButton() {
    print('Submit Button Clicked');
  }
}
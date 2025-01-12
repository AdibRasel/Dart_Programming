void main() {
  // ফাংশন হলো কোডের একটি ব্লক যা একটি নির্দিষ্ট কাজ সম্পাদন করে। ফাংশনকে বারবার ব্যবহার করা যায়।

  // কেনো ব্যবহার করা হয়:
  // ফাংশন ব্যবহার করা হয় কোড পুনরায় ব্যবহারযোগ্য করার জন্য, কোডকে সংগঠিত এবং মডুলার করার জন্য।

  // ফাংশনের প্রকারভেদ:
  // ১. Regular Function (সাধারণ ফাংশন)
  // ২. Parameterized Function (প্যারামিটারযুক্ত ফাংশন)
  // ৩. Default Parameter Function (ডিফল্ট প্যারামিটারযুক্ত ফাংশন)
  // ৪. Named Parameter Function (নামযুক্ত প্যারামিটারযুক্ত ফাংশন)
  // ৫. Anonymous Function (অ্যানোনিমাস ফাংশন)

  // Regular Function (সাধারণ ফাংশন):
  void sayHello() {
    print('Hello, World!'); // রেজাল্ট: Hello, World!
  }
  sayHello();

  // Parameterized Function (প্যারামিটারযুক্ত ফাংশন):
  void greet(String name) {
    print('Hello, $name!'); // রেজাল্ট: Hello, Rasel Hossain Adib!
  }
  greet('Rasel Hossain Adib');

  // Default Parameter Function (ডিফল্ট প্যারামিটারযুক্ত ফাংশন):
  void greetWithDefault(String name, [String greeting = 'Hello']) {
    print('$greeting, $name!'); // রেজাল্ট: Hi, Rasel Hossain Adib!
  }
  greetWithDefault('Rasel Hossain Adib', 'Hi');
  greetWithDefault('Rasel Hossain Adib'); // রেজাল্ট: Hello, Rasel Hossain Adib!

  // Named Parameter Function (নামযুক্ত প্যারামিটারযুক্ত ফাংশন):
  void greetWithNamed({required String name, String greeting = 'Hello'}) {
    print('$greeting, $name!'); // রেজাল্ট: Hey, Rasel Hossain Adib!
  }
  greetWithNamed(name: 'Rasel Hossain Adib', greeting: 'Hey');
  greetWithNamed(name: 'Rasel Hossain Adib'); // রেজাল্ট: Hello, Rasel Hossain Adib!

  // Anonymous Function (অ্যানোনিমাস ফাংশন):
  var numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print('Number: $number'); // রেজাল্ট: 1, 2, 3, 4, 5
  });

  // ফাংশন রিটার্ন টাইপ:
  int add(int a, int b) {
    return a + b;
  }
  print('Sum: ${add(3, 4)}'); // রেজাল্ট: Sum: 7

  // ফাংশন ভেতরে ফাংশন:
  void outerFunction() {
    print('This is the outer function');
    
    void innerFunction() {
      print('This is the inner function');
    }
    
    innerFunction(); // রেজাল্ট: This is the inner function
  }
  outerFunction(); // রেজাল্ট: This is the outer function

  // ফাংশন অ্যাসাইন করা ভেরিয়েবলে:
  var multiply = (int a, int b) => a * b;
  print('Product: ${multiply(3, 4)}'); // রেজাল্ট: Product: 12

  // ফাংশন পাস করা আর্গুমেন্ট হিসেবে:
  void executeFunction(Function func) {
    func();
  }
  executeFunction(() => print('This is a passed function')); // রেজাল্ট: This is a passed function
}

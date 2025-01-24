// Example: ফিল্ড এবং প্যারামিটারের মধ্যে পার্থক্য করতে this
class Person {
  late String name; // ব্যক্তির নাম (late ব্যবহার করা হয়েছে)

  // কনস্ট্রাক্টর যেখানে ফিল্ড এবং প্যারামিটারের কনফ্লিক্ট এড়াতে this ব্যবহার করা হয়
  Person(String name) {
    this.name = name; // this.name ফিল্ডকে নির্দেশ করে
  }

  void display() {
    print('Name: $name');
  }
}

// Example: মেথড এবং ফিল্ড অ্যাক্সেস করতে this
class Rectangle {
  int width, height; // আয়তক্ষেত্রের প্রস্থ এবং উচ্চতা

  Rectangle(this.width, this.height); // কনস্ট্রাক্টর

  // this ব্যবহার করে ফিল্ড রেফার করা
  int calculateArea() {
    return this.width * this.height;
  }
}

// Example: Vehicle ক্লাসের জন্য কোড
class Vehicle {
  late String model; // গাড়ির মডেল
  late int year; // গাড়ির বছর

  Vehicle(String model, int year) {
    this.model = model; // ফিল্ড ইনিশিয়ালাইজ করা
    this.year = year; // ফিল্ড ইনিশিয়ালাইজ করা
  }

  void showDetails() {
    print('Model: $model, Year: $year');
  }
}

void main() {
  // Person উদাহরণ
  var person = Person('Rasel Hossain Adib');
  person.display(); // আউটপুট: Name: Rasel Hossain Adib

  // Rectangle উদাহরণ
  var rect = Rectangle(10, 5);
  print('Area: ${rect.calculateArea()}'); // আউটপুট: Area: 50

  // Vehicle উদাহরণ
  var vehicle = Vehicle('Toyota', 2022);
  vehicle.showDetails(); // আউটপুট: Model: Toyota, Year: 2022
}

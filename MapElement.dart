void main() {
  var Person = {
    'Name': 'Rasel Hossain Adib',
    'Age': 25,
    'Country': 'Bangladesh',
    'Occupation': 'Student'
  };

  Person['School'] = 'Shahapur M.L. High School'; // নতুন কী-ভ্যালু জোড়া যোগ করা
  print(Person); // {Name: Rasel Hossain Adib, Age: 25, Country: Bangladesh, Occupation: Student, School: Shahapur M.L. High School}

  var ConstructorMap = new Map(); // ম্যাপ এর কন্সট্রাক্টর, Map হচ্ছে একটা বিল্টিন ক্লাস
  ConstructorMap['Name'] = 'Rasel Hossain Adib'; // ম্যাপে কী-ভ্যালু আকারে মান যোগ করা
  ConstructorMap['Age'] = 25; // ম্যাপে কী-ভ্যালু আকারে মান যোগ করা
  ConstructorMap['Country'] = 'Bangladesh'; // ম্যাপে কী-ভ্যালু আকারে মান যোগ করা
  ConstructorMap['Occupation'] = 'Student'; // ম্যাপে কী-ভ্যালু আকারে মান যোগ করা
  print(ConstructorMap); // {Name: Rasel Hossain Adib, Age: 25, Country: Bangladesh, Occupation: Student}

  print(ConstructorMap.keys); // ম্যাপের কী গুলো প্রিন্ট করা
  // রেজাল্ট: (Name, Age, Country, Occupation)
  
  print(ConstructorMap.values); // ম্যাপের ভ্যালু গুলো প্রিন্ট করা
  // রেজাল্ট: (Rasel Hossain Adib, 25, Bangladesh, Student)
  
  print(ConstructorMap.length); // ম্যাপের লেনথ বের করা
  // রেজাল্ট: 4
  
  print(ConstructorMap.isEmpty); // ম্যাপ খালি কিনা চেক করা
  // রেজাল্ট: false
  
  print(ConstructorMap.isNotEmpty); // ম্যাপ খালি না কিনা চেক করা
  // রেজাল্ট: true
  
  ConstructorMap.remove('Occupation'); // ম্যাপ থেকে কোন ভ্যালু মুছে ফেলা
  print(ConstructorMap); // {Name: Rasel Hossain Adib, Age: 25, Country: Bangladesh}
  
  ConstructorMap.clear(); // ম্যাপ থেকে সকল ভ্যালু মুছে ফেলা
  print(ConstructorMap); // {}
  
  ConstructorMap['Name'] = 'Rasel Hossain Adib';
  ConstructorMap['Age'] = 25;
  ConstructorMap['Country'] = 'Bangladesh';
  ConstructorMap['Occupation'] = 'Student';
  
  print(ConstructorMap.containsKey('Name')); // ম্যাপে কোন কী আছে কিনা চেক করা
  // রেজাল্ট: true
  
  print(ConstructorMap.containsValue('Rasel Hossain Adib')); // ম্যাপে কোন ভ্যালু আছে কিনা চেক করা
  // রেজাল্ট: true
  
  ConstructorMap.update('Name', (value) => 'Rasel Hossain Adib Updated'); // ম্যাপে কোন ভ্যালু আপডেট করা
  print(ConstructorMap); // {Name: Rasel Hossain Adib Updated, Age: 25, Country: Bangladesh, Occupation: Student}
  
  ConstructorMap.putIfAbsent('School', () => 'Shahapur M.L. High School'); // ম্যাপে কোন ভ্যালু যোগ করা
  print(ConstructorMap); // {Name: Rasel Hossain Adib Updated, Age: 25, Country: Bangladesh, Occupation: Student, School: Shahapur M.L. High School}
  
  ConstructorMap.addAll({"Address": "Shahapur, Chatkhil, Noakhali", "Mobile NO": "01934544352"}); // ম্যাপে একাধিক কী-ভ্যালু যোগ করা
  print(ConstructorMap); // {Name: Rasel Hossain Adib Updated, Age: 25, Country: Bangladesh, Occupation: Student, School: Shahapur M.L. High School, Address: Shahapur, Chatkhil, Noakhali, Mobile NO: 01934544352}
  
  ConstructorMap.remove('Age'); // ম্যাপে থেকে নির্দিষ্ট ভ্যালু মুছে ফেলা
  print(ConstructorMap); // {Name: Rasel Hossain Adib Updated, Country: Bangladesh, Occupation: Student, School: Shahapur M.L. High School, Address: Shahapur, Chatkhil, Noakhali, Mobile NO: 01934544352}
}
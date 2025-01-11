void main() {
  // একটি ম্যাপ তৈরি করা হচ্ছে
  var map = {
    'Name':'Rasel Hossain Adib',
    'age': 25,
    'Address': 'Shibrampur, Shahapur, Chatkhil, Noakhali',
    'Phone': '01934544352',
    'Email': 'adibrasel.2022@gmail.com',
    'apple': 2,
    'banana': 3,
    'orange': 5,
  };

  // মানগুলি অ্যাক্সেস করা হচ্ছে
  print('Name: ${map['Name']}'); 
  // Name: Rasel Hossain Adib
  print('Age: ${map['age']}'); 
  // Age: 25
  print('Address: ${map['Address']}'); 
  // Address: Shibrampur, Shahapur, Chatkhil, Noakhali
  print('Phone: ${map['Phone']}'); 
  // Phone: 01934544352
  print('Email: ${map['Email']}'); 
  // Email: adibrasel.2022@gmail.com

  // নতুন একটি কী-মান জোড়া যোগ করা হচ্ছে
  map['Occupation'] = 'Software Developer';
  print('Occupation: ${map['Occupation']}'); 
  // Occupation: Software Developer

  // একটি মান আপডেট করা হচ্ছে
  map['age'] = 26;
  print('Updated age: ${map['age']}'); 
  // Updated age: 26

  // একটি কী-মান জোড়া সরানো হচ্ছে
  map.remove('Phone');
  print('Phone removed: ${map['Phone']}'); 
  // Phone removed: null

  // একটি কী বিদ্যমান কিনা তা যাচাই করা হচ্ছে
  print('Contains Name: ${map.containsKey('Name')}'); 
  // Contains Name: true
  print('Contains Phone: ${map.containsKey('Phone')}'); 
  // Contains Phone: false

  // ম্যাপের উপর ইটারেট করা হচ্ছে
  map.forEach((key, value) {
    print('$key: $value'); 
    // Example output:
    // Name: Rasel Hossain Adib
    // age: 26
    // Address: Shibrampur, Shahapur, Chatkhil, Noakhali
    // Email: adibrasel.2022@gmail.com
    // Occupation: Software Developer
    // apple: 2
    // banana: 3
    // orange: 5
  });

  // সমস্ত কীগুলি বের করা হচ্ছে
  print('Keys: ${map.keys}'); 
  // Keys: (Name, age, Address, Email, Occupation, apple, banana, orange)

  // সমস্ত মানগুলি বের করা হচ্ছে
  print('Values: ${map.values}'); 
  // Values: (Rasel Hossain Adib, 26, Shibrampur, Shahapur, Chatkhil, Noakhali, adibrasel.2022@gmail.com, Software Developer, 2, 3, 5)

  // ম্যাপের দৈর্ঘ্য বের করা হচ্ছে
  print('Map length: ${map.length}'); 
  // Map length: 8
}
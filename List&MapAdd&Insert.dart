void main(){
  // একটি লিস্ট তৈরি করা হয়েছে যেটির নাম Number এবং এতে ১ থেকে ৫ পর্যন্ত সংখ্যা রয়েছে
  var Number = [1, 2, 3, 4, 5];
  
  // add এর মাধ্যমে লিস্টের শেষে একটি সংখ্যা যোগ করা হয়েছে
  // লিস্টের শেষে ৬ যোগ করা হয়েছে
  Number.add(6);
  print(Number); // [1, 2, 3, 4, 5, 6]
  
  // লিস্টের শেষে ৭, ৮, ৯ যোগ করা হয়েছে
  Number.addAll([7, 8, 9]);
  print(Number); // [1, 2, 3, 4, 5, 6, 7, 8, 9]

  // insert এর মাধ্যমে লিস্টের ইনডেক্স নির্দিষ্ট করে সংখ্যা যোগ করা হয়েছে
  // লিস্টের ১ নম্বর ইনডেক্সে ১০০ যোগ করা হয়েছে
  Number.insert(1, 100);
  print(Number); // [1, 100, 2, 3, 4, 5, 6, 7, 8, 9]

  // লিস্টের ৩ নম্বর ইনডেক্সে ৫০০০, ৩০০০, ৪০০০ যোগ করা হয়েছে
  Number.insertAll(3, [5000, 3000, 4000]);
  print(Number); // [1, 100, 2, 5000, 3000, 4000, 3, 4, 5, 6, 7, 8, 9]

  // একটি ম্যাপ তৈরি করা হয়েছে যেটির নাম info এবং এতে কিছু key-value pair রয়েছে
  var info = {'name': 'Rasel Hossain Adib', 'age': 25};
  
  // ম্যাপে একটি নতুন key-value pair যোগ করা হয়েছে
  info['city'] = 'Noakhali';
  print(info); // {name: Rasel Hossain Adib, age: 25, city: Noakhali}
  
  // ম্যাপে একাধিক key-value pair যোগ করা হয়েছে
  info.addAll({'country': 'Fantasy', 'occupation': 'Adventurer'});
  print(info); // {name: Rasel Hossain Adib, age: 25, city: Noakhali, country: Fantasy, occupation: Adventurer}

  // Map এর key গুলোকে একটি লিস্টে রূপান্তর করা হয়েছে
  var keys = info.keys.toList();
  
  // index অনুযায়ী Map এর ডাটা শো করানো
  for (int i = 0; i < keys.length; i++) {
    print('Key: ${keys[i]}, Value: ${info[keys[i]]}');
  }

  // রেজাল্ট শো করানো
  print('Final List: $Number');
  print('Final Map: $info');
}
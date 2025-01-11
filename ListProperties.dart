void main() {

  // List Properties এর বিস্তারিত আলোচনা করা হবে এই চ্যাপ্টারে।
  var city = ['Noakhali', 'Dhaka', 'Chittagong', 'Rajshahi', 'Khulna', 'Sylhet', 'Barisal', 'Rangpur', 'Mymensingh'];
  print(city.length); // লিস্ট এর উপাদানের সংখ্যা বের করতে length প্রপার্টি ব্যবহার করা হয়।
  // 9

  print(city.reversed); // লিস্ট এর উপাদানগুলো উল্টানোর জন্য reversed প্রপার্টি ব্যবহার করা হয়।
  // (Mymensingh, Rangpur, Barisal, Sylhet, Khulna, Rajshahi, Chittagong, Dhaka, Noakhali)

  print(city.isEmpty); // লিস্ট খালি কিনা তা চেক করার জন্য isEmpty প্রপার্টি ব্যবহার করা হয়।
  // false

  print(city.isNotEmpty); // লিস্ট খালি না কিনা তা চেক করার জন্য isNotEmpty প্রপার্টি ব্যবহার করা হয়।
  // true

  print(city.first); // লিস্ট এর প্রথম উপাদানের মান বের করার জন্য first প্রপার্টি ব্যবহার করা হয়।
  // Noakhali

  print(city.last); // লিস্ট এর শেষ উপাদানের মান বের করার জন্য last প্রপার্টি ব্যবহার করা হয়।
  // Mymensingh

  // print(city.single); // লিস্ট এর একমাত্র উপাদানের মান বের করার জন্য single প্রপার্টি ব্যবহার করা হয়। (This will throw an error if the list has more than one element)
  print(city.asMap()); // লিস্ট এর উপাদানগুলোকে ম্যাপ এর মতো ব্যবহার করার জন্য asMap প্রপার্টি ব্যবহার করা হয়।
  // {0: Noakhali, 1: Dhaka, 2: Chittagong, 3: Rajshahi, 4: Khulna, 5: Sylhet, 6: Barisal, 7: Rangpur, 8: Mymensingh}
  
  city.shuffle(); // লিস্ট এর উপাদানগুলোকে ক্রম পরিবর্তন করার জন্য shuffle প্রপার্টি ব্যবহার করা হয়।
  print(city); // Shuffle এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Sylhet, Barisal, Rangpur, Noakhali, Mymensingh, Khulna, Rajshahi, Chittagong, Dhaka] (depends on shuffle)
  
  print(city.sublist(2, 5)); // লিস্ট এর নির্দিষ্ট পরিসীমায় উপাদান বের করার জন্য sublist প্রপার্টি ব্যবহার করা হয়।
  // Example output: [Rangpur, Noakhali, Mymensingh] (depends on shuffle)
  
  print(city.getRange(2, 5)); // লিস্ট এর নির্দিষ্ট পরিসীমায় উপাদান বের করার জন্য getRange প্রপার্টি ব্যবহার করা হয়।
  // Example output: (Rangpur, Noakhali, Mymensingh) (depends on shuffle)
  
  print(city.indexOf('Dhaka')); // লিস্ট এর উপাদানের মান বের করার জন্য indexOf প্রপার্টি ব্যবহার করা হয়।
  // Example output: 8 (depends on shuffle)
 
  print(city.lastIndexOf('Dhaka')); // লিস্ট এর উপাদানের মান বের করার জন্য lastIndexOf প্রপার্টি ব্যবহার করা হয়।
  // Example output: 8 (depends on shuffle)
  
  print(city.contains('Dhaka')); // লিস্ট এর উপাদানের মান বের করার জন্য contains প্রপার্টি ব্যবহার করা হয়।
  // true
 
  city.insert(2, 'Comilla'); // লিস্ট এর নির্দিষ্ট ইনডেক্সে নতুন উপাদান যুক্ত করার জন্য insert প্রপার্টি ব্যবহার করা হয়।
  print(city); // Insert এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Sylhet, Barisal, Comilla, Rangpur, Noakhali, Mymensingh, Khulna, Rajshahi, Chittagong, Dhaka] (depends on shuffle)
  
  city.insertAll(2, ['Comilla', 'Feni']); // লিস্ট এর নির্দিষ্ট ইনডেক্সে একাধিক নতুন উপাদান যুক্ত করার জন্য insertAll প্রপার্টি ব্যবহার করা হয়।
  print(city); // InsertAll এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Sylhet, Barisal, Comilla, Feni, Comilla, Rangpur, Noakhali, Mymensingh, Khulna, Rajshahi, Chittagong, Dhaka] (depends on shuffle)
  
  city.remove('Dhaka'); // লিস্ট এর নির্দিষ্ট উপাদান মুছে ফেলার জন্য remove প্রপার্টি ব্যবহার করা হয়।
  print(city); // Remove এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Sylhet, Barisal, Comilla, Feni, Comilla, Rangpur, Noakhali, Mymensingh, Khulna, Rajshahi, Chittagong] (depends on shuffle)
  
  city.removeAt(2); // লিস্ট এর নির্দিষ্ট ইনডেক্সের উপাদান মুছে ফেলার জন্য removeAt প্রপার্টি ব্যবহার করা হয়।
  print(city); // RemoveAt এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Sylhet, Barisal, Feni, Comilla, Rangpur, Noakhali, Mymensingh, Khulna, Rajshahi, Chittagong] (depends on shuffle)
  
  city.removeLast(); // লিস্ট এর শেষ উপাদান মুছে ফেলার জন্য removeLast প্রপার্টি ব্যবহার করা হয়।
  print(city); // RemoveLast এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Sylhet, Barisal, Feni, Comilla, Rangpur, Noakhali, Mymensingh, Khulna, Rajshahi] (depends on shuffle)
  
  city.removeRange(2, 5); // লিস্ট এর নির্দিষ্ট পরিসীমায় উপাদান মুছে ফেলার জন্য removeRange প্রপার্টি ব্যবহার করা হয়।
  print(city); // RemoveRange এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Sylhet, Barisal, Noakhali, Mymensingh, Khulna, Rajshahi] (depends on shuffle)
  
  city.removeWhere((element) => element.length < 7); // লিস্ট এর নির্দিষ্ট শর্তের মধ্যে উপাদান মুছে ফেলার জন্য removeWhere প্রপার্টি ব্যবহার করা হয়।
  print(city); // RemoveWhere এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Noakhali, Mymensingh, Khulna, Rajshahi] (depends on shuffle)
  
  city.retainWhere((element) => element.length < 7); // লিস্ট এর নির্দিষ্ট শর্তের মধ্যে উপাদান রেখে দেওয়ার জন্য retainWhere প্রপার্টি ব্যবহার করা হয়।
  print(city); // RetainWhere এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Khulna] (depends on shuffle)
  
  city.fillRange(2, 5, 'Comilla'); // লিস্ট এর নির্দিষ্ট পরিসীমায় উপাদান পূরণ করার জন্য fillRange প্রপার্টি ব্যবহার করা হয়।
  print(city); // FillRange এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Khulna, Comilla, Comilla, Comilla] (depends on shuffle)
  
  city.sort(); // লিস্ট এর উপাদানগুলোকে সাজানোর জন্য sort প্রপার্টি ব্যবহার করা হয়।
  print(city); // Sort এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Comilla, Comilla, Comilla, Khulna]
  
  city.setAll(2, ['Comilla', 'Feni']); // লিস্ট এর নির্দিষ্ট ইনডেক্সে একাধিক উপাদান পরিবর্তন করার জন্য setAll প্রপার্টি ব্যবহার করা হয়।
  print(city); // SetAll এর পরে লিস্ট এর উপাদানগুলো
  // Example output: [Comilla, Comilla, Comilla, Feni]
  
  city.clear(); // লিস্ট এর সব উপাদান মুছে ফেলার জন্য clear প্রপার্টি ব্যবহার করা হয়।
  print(city); // Clear এর পরে লিস্ট এর উপাদানগুলো
  // []
}
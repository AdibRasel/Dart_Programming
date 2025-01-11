void main() {
  // Set হচ্ছে একটি অদৃশ্য তালিকা যেখানে একই মান একাধিকবার থাকতে পারে না।
  // Set এর মান পরিবর্তন করা যায় না।
  // তাই নতুন মান যোগ করা যায় না।
  // তবে মান সরানো যায়।
  // Set এর মধ্যে সকল ডাটা একই টাইপের হতে হবে।
  // Set এর মধ্যে ডুপ্লিকেট মান থাকতে পারবে না।

  var MyCitySet = <String>{'Dhaka', 'New York', 'London', 'Tokyo'};
  MyCitySet.add("Noakhali"); // নতুন মান যোগ করা
  MyCitySet.addAll({"Shahapur", "Chattogram"}); // একাধিক মান যোগ করা
  print(MyCitySet); // {Dhaka, New York, London, Tokyo, Noakhali, Shahapur, Chattogram}

  print(MyCitySet.elementAt(1)); // elementAt() দিয়ে ইনডেক্স দিয়ে ডাটা শো করানো
  // রেজাল্ট: New York
  
  // MyCitySet.clear(); // clear() দিয়ে সকল ডাটা মুছে ফেলা
  // print(MyCitySet); // {}

  MyCitySet.remove("Dhaka"); // remove() দিয়ে ডাটা মুছে ফেলা
  print(MyCitySet); // {New York, London, Tokyo, Noakhali, Shahapur, Chattogram}

  print(MyCitySet.first); // first দিয়ে প্রথম ইলিমেন্ট শো করানো
  // রেজাল্ট: New York
  
  print(MyCitySet.last); // last দিয়ে শেষ ইলিমেন্ট শো করানো
  // রেজাল্ট: Chattogram
  
  print(MyCitySet.length); // length দিয়ে সেটের লেনথ বের করা
  // রেজাল্ট: 6
  
  print(MyCitySet.isEmpty); // isEmpty দিয়ে সেট খালি কিনা চেক করা
  // রেজাল্ট: false
  
  print(MyCitySet.isNotEmpty); // isNotEmpty দিয়ে সেট খালি না কিনা চেক করা
  // রেজাল্ট: true
  
  print(MyCitySet.contains("Dhaka")); // contains দিয়ে কোন এলিমেন্ট আছে কিনা চেক করা
  // রেজাল্ট: false
  
  print(MyCitySet.toList()); // toList দিয়ে সেট কে লিস্টে কনভার্ট করা
  // রেজাল্ট: [New York, London, Tokyo, Noakhali, Shahapur, Chattogram]
  
  print(MyCitySet.toSet()); // toSet দিয়ে সেট কে সেটে কনভার্ট করা
  // রেজাল্ট: {New York, London, Tokyo, Noakhali, Shahapur, Chattogram}
  
  print(MyCitySet.union({"Dhaka", "New York"})); // union দিয়ে দুইটা সেট কে যোগ করা
  // রেজাল্ট: {New York, London, Tokyo, Noakhali, Shahapur, Chattogram, Dhaka}
  
  print(MyCitySet.intersection({"Dhaka", "New York"})); // intersection দিয়ে দুইটা সেট কে যোগ করা
  // রেজাল্ট: {New York}
  
  print(MyCitySet.difference({"Dhaka", "New York"})); // difference দিয়ে দুইটা সেট কে যোগ করা
  // রেজাল্ট: {London, Tokyo, Noakhali, Shahapur, Chattogram}
  
  print(MyCitySet.lookup("Dhaka")); // lookup দিয়ে কোন এলিমেন্ট আছে কিনা চেক করা
  // রেজাল্ট: null
  
  print(MyCitySet.hashCode); // hashCode দিয়ে সেটের হ্যাশ কোড বের করা
  // রেজাল্ট: (হ্যাশ কোড ভিন্ন হতে পারে)
  
  print(MyCitySet.runtimeType); // runtimeType দিয়ে সেটের রানটাইম টাইপ বের করা
  // রেজাল্ট: _CompactLinkedHashSet<String>
  
  print(MyCitySet.toString()); // toString দিয়ে সেটের স্ট্রিং বের করা
  // রেজাল্ট: {New York, London, Tokyo, Noakhali, Shahapur, Chattogram}
}
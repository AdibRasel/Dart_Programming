void main(){
  // Growable List এ যে কোন সময় নতুন এলিমেন্ট যোগ করা যায়।
  var city =['Noakhali', 'Dhaka', 'Chittagong', 'Rajshahi', 'Khulna', 'Sylhet'];
  city.add("Cox's Bazar");
  print(city);

  // Fixed Length List এ নতুন এলিমেন্ট যোগ করা যায় না।
  const cityFixed =['Noakhali', 'Dhaka', 'Chittagong', 'Rajshahi', 'Khulna', 'Sylhet'];
  cityFixed.add("Cox's Bazar");
  print(cityFixed);
  // এখানে এরর দেখাবে।
}
void main() {
  // switch-case এর ব্যাখ্যা:
  // switch স্টেটমেন্ট ব্যবহার করা হয় একটি ভ্যালু বিভিন্ন কেসের সাথে মিলানোর জন্য।
  // প্রতিটি কেস একটি নির্দিষ্ট ভ্যালুর সাথে মিলানো হয়।
  // যদি কেসটি মিলে যায়, তাহলে সেই কেসের কোড ব্লক কার্যকর হয়।
  // যদি কোন কেস মিলে না যায়, তাহলে default কেস কার্যকর হয় (যদি default কেস থাকে)।

  String grade = 'A';

  // উদাহরণ ১: গ্রেড অনুযায়ী মেসেজ প্রিন্ট করা
  switch (grade) {
    case 'A':
      print('Excellent'); // রেজাল্ট: Excellent
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Poor');
      break;
    default:
      print('Invalid grade');
  }

  int number = 2;

  // উদাহরণ ২: সংখ্যা অনুযায়ী মেসেজ প্রিন্ট করা
  switch (number) {
    case 1:
      print('One');
      break;
    case 2:
      print('Two'); // রেজাল্ট: Two
      break;
    case 3:
      print('Three');
      break;
    default:
      print('Invalid number');
  }

  String day = 'Monday';

  // উদাহরণ ৩: দিনের নাম অনুযায়ী মেসেজ প্রিন্ট করা
  switch (day) {
    case 'Monday':
      print('Start of the work week'); // রেজাল্ট: Start of the work week
      break;
    case 'Friday':
      print('End of the work week');
      break;
    case 'Saturday':
    case 'Sunday':
      print('Weekend');
      break;
    default:
      print('Invalid day');
  }

  int month = 12;

  // উদাহরণ ৪: মাসের নাম অনুযায়ী মেসেজ প্রিন্ট করা
  switch (month) {
    case 1:
      print('January');
      break;
    case 2:
      print('February');
      break;
    case 3:
      print('March');
      break;
    case 4:
      print('April');
      break;
    case 5:
      print('May');
      break;
    case 6:
      print('June');
      break;
    case 7:
      print('July');
      break;
    case 8:
      print('August');
      break;
    case 9:
      print('September');
      break;
    case 10:
      print('October');
      break;
    case 11:
      print('November');
      break;
    case 12:
      print('December'); // রেজাল্ট: December
      break;
    default:
      print('Invalid month');
  }
}

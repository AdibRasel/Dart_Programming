void main() {
  // if এবং else এর ব্যাখ্যা:
  // if স্টেটমেন্ট ব্যবহার করা হয় একটি শর্ত চেক করার জন্য।
  // যদি শর্তটি সত্য হয়, তাহলে if ব্লকের কোডটি কার্যকর হবে।
  // যদি শর্তটি মিথ্যা হয়, তাহলে else ব্লকের কোডটি কার্যকর হবে (যদি else ব্লক থাকে)।

  int number = 10;

  // উদাহরণ ১: যদি number এর মান 10 হয়
  if (number == 10) {
    print('Number is 10'); // রেজাল্ট: Number is 10
  } else {
    print('Number is not 10');
  }

  // উদাহরণ ২: যদি number এর মান 5 এর চেয়ে বড় হয়
  if (number > 5) {
    print('Number is greater than 5'); // রেজাল্ট: Number is greater than 5
  } else {
    print('Number is not greater than 5');
  }

  // উদাহরণ ৩: যদি number এর মান 15 এর চেয়ে ছোট হয়
  if (number < 15) {
    print('Number is less than 15'); // রেজাল্ট: Number is less than 15
  } else {
    print('Number is not less than 15');
  }

  // উদাহরণ ৪: যদি number এর মান 10 এর সমান হয়
  if (number == 10) {
    print('Number is exactly 10'); // রেজাল্ট: Number is exactly 10
  } else if (number > 10) {
    print('Number is greater than 10');
  } else {
    print('Number is less than 10');
  }

  // উদাহরণ ৫: যদি number এর মান 5 এর চেয়ে বড় এবং 15 এর চেয়ে ছোট হয়
  if (number > 5 && number < 15) {
    print('Number is between 5 and 15'); // রেজাল্ট: Number is between 5 and 15
  } else {
    print('Number is not between 5 and 15');
  }

  // উদাহরণ ৬: যদি number এর মান 5 এর সমান বা 15 এর সমান হয়
  if (number == 5 || number == 15) {
    print('Number is either 5 or 15');
  } else {
    print('Number is neither 5 nor 15'); // রেজাল্ট: Number is neither 5 nor 15
  }

  // উদাহরণ ৭: যদি number এর মান 0 হয়
  if (number == 0) {
    print('Number is zero');
  } else {
    print('Number is not zero'); // রেজাল্ট: Number is not zero
  }

  // উদাহরণ ৮: যদি number এর মান 10 এর চেয়ে বড় হয় এবং 20 এর চেয়ে ছোট হয়
  if (number > 10 && number < 20) {
    print('Number is between 10 and 20');
  } else {
    print('Number is not between 10 and 20'); // রেজাল্ট: Number is not between 10 and 20
  }

  // উদাহরণ ৯: যদি number এর মান 5 এর সমান বা 10 এর সমান হয়
  if (number == 5 || number == 10) {
    print('Number is either 5 or 10'); // রেজাল্ট: Number is either 5 or 10
  } else {
    print('Number is neither 5 nor 10');
  }

  // উদাহরণ ১০: যদি number এর মান 5 এর চেয়ে বড় হয় অথবা 15 এর চেয়ে ছোট হয়
  if (number > 5 || number < 15) {
    print('Number is either greater than 5 or less than 15'); // রেজাল্ট: Number is either greater than 5 or less than 15
  } else {
    print('Number is neither greater than 5 nor less than 15');
  }

  // উদাহরণ ১১: যদি number এর মান 10 এর সমান হয় এবং 20 এর চেয়ে ছোট হয়
  if (number == 10 && number < 20) {
    print('Number is 10 and less than 20'); // রেজাল্ট: Number is 10 and less than 20
  } else {
    print('Number is not 10 or not less than 20');
  }
}

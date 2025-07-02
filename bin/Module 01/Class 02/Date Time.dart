void main(){

  print('----------------------------------------');

  final currentTime = DateTime.now(); // বর্তমান তারিখ ও সময়
  print('Now Time is : $currentTime');

  print('----------------------------------------');

  //নির্দিষ্ট তারিখ তৈরি করা:
  print('----------------------------------------');

  DateTime specificDate = DateTime(2025, 5, 28);  // 2025 সালের 28 মে
  print("Specific Date: $specificDate");

  //তারিখ ও সময় সহ নির্দিষ্ট একটি তারিখ তৈরি করা:

  print('----------------------------------------');

  DateTime dateTimeWithTime = DateTime(2025, 5, 28, 14, 30);  // 2025 সালের 28 মে, 14:30
  print("Date and Time: $dateTimeWithTime");

  //বছর, মাস, দিন, ঘণ্টা, মিনিট, সেকেন্ড, মাইক্রোসেকেন্ড ইত্যাদি বের করা:

  // DateTime.now(): বর্তমান তারিখ ও সময়।
  // DateTime(yyyy, mm, dd): নির্দিষ্ট তারিখ তৈরি।
  // DateTime(yyyy, mm, dd, hh, mm, ss): নির্দিষ্ট তারিখ এবং সময় তৈরি।
  // now.year, now.month, now.day: বর্তমান বছর, মাস, দিন।
  // now.add(Duration(days: n)): নির্দিষ্ট দিন, ঘণ্টা, মিনিট যোগ করা।
  // now.subtract(Duration(days: n)): নির্দিষ্ট দিন, ঘণ্টা, মিনিট বিয়োগ করা।
  // date1.difference(date2): দুটি DateTime এর মধ্যে পার্থক্য বের করা।



  DateTime now = DateTime.now();

  print("Year: ${now.year}");
  print("Month: ${now.month}");
  print("Day: ${now.day}");
  print("Hour: ${now.hour}");
  print("Minute: ${now.minute}");
  print("Second: ${now.second}");
  print("Microsecond: ${now.microsecond}");

  print('----------------------------------------');

  String getBanglaDate(DateTime date) {
    final months = [
      'জানুয়ারি', 'ফেব্রুয়ারি', 'মার্চ', 'এপ্রিল',
      'মে', 'জুন', 'জুলাই', 'আগস্ট',
      'সেপ্টেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর'
    ];

    return '${date.day} ${months[date.month-1]}, ${date.year}';
  }

  print(getBanglaDate(DateTime.now())); // 20 জুলাই, 2024

}
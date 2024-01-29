import 'package:day/day.dart';
// import 'package:flutter/material.dart';

// import 'package:iconify_flutter/iconify_flutter.dart';
// import 'package:iconify_flutter/icons/wi.dart';

String timeGreetings() {
  int hour = Day().get('hour') as int;

  if (hour >= 5 && hour < 12)
    return "morning";
  else if (hour >= 12 && hour < 18)
    return "afternoon";
  else
    return "evening";
}

// Widget emojiGreetings() {
//   int hour = Day().get('hour') as int;

//   if (hour >= 5 && hour < 12)
//     return Iconify(Wi.sunrise);
//   else if (hour >= 12 && hour < 18)
//     return Iconify(Wi.day_sunny);
//   else
//     return Iconify(Wi.night_clear);
// }

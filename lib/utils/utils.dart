import 'package:flutter/cupertino.dart';

bool isNotEmpty(value) {
  if (value != null && value != '') {
    return true;
  }
  return false;
}

bool isEmpty(value) {
  if (value == null || value == '') {
    return true;
  }
  return false;
}

verticalSpace({height = 10}) {
  return SizedBox(
    height: (height as int).toDouble(),
  );
}

horizontalSpace({width = 10}) {
  return SizedBox(
    width: (width as int).toDouble(),
  );
}

// String showDate(String date) {
//   return DateFormat(Constants.DATE_UI_FORMAT).format(DateTime.parse(date));
// }
//
// String showTime(String date) {
//   return DateFormat(Constants.TIME_UI_FORMAT).format(DateTime.parse(date));
// }

String formatHHMMSS(int seconds) {
  if (seconds != null && seconds != 0) {
    int hours = (seconds / 3600).truncate();
    seconds = (seconds % 3600).truncate();
    int minutes = (seconds / 60).truncate();

    String hoursStr = (hours).toString().padLeft(2, '0');
    String minutesStr = (minutes).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    return "${hoursStr}h:${minutesStr}m:${secondsStr}s";
  } else {
    return "00h:00m:00s";
  }
}

//  clearLoginSession(){
//    globalPrefs?.setString(SharedPreferenceUtils.TOKEN,"");
//    globalPrefs?.setString(SharedPreferenceUtils.USER_MODEL,"");
// }

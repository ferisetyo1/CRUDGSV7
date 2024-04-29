import 'package:get/get.dart';
import 'package:intl/intl.dart';

extension DateExt on DateTime {
  String format(String pattern) {
    return DateFormat(pattern, Get.locale?.languageCode ?? "id")
        .format(toLocal());
  }

  int get weekdayIndex => weekday == DateTime.sunday
      ? 0
      : weekday == DateTime.monday
          ? 1
          : weekday == DateTime.tuesday
              ? 2
              : weekday == DateTime.wednesday
                  ? 3
                  : weekday == DateTime.thursday
                      ? 4
                      : weekday == DateTime.friday
                          ? 5
                          : 6;
}

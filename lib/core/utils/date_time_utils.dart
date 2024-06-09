import 'package:intl/intl.dart';

class DateTimeUtils {
  static String formattedDate(DateTime dateTime) {
    return DateFormat('EEEE, d MMMM,yyyy').format(dateTime);
  }

  static String formattedTime(DateTime dateTime) {
    return DateFormat('HH:mm:ss').format(dateTime);
  }
}
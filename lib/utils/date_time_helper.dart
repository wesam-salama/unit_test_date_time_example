class DateTimeHelper {
  DateTimeHelper._();
  static DateTimeHelper instance = DateTimeHelper._();

  String getTimeOfTheDay(DateTime dateTime) {
    if (dateTime.hour >= 0 && dateTime.hour < 6) return 'Night';
    if (dateTime.hour >= 6 && dateTime.hour < 12) return 'Morning';
    if (dateTime.hour >= 12 && dateTime.hour < 18) return 'Afternoon';
    return 'Evening';
  }
}

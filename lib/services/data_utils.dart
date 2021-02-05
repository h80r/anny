bool isSameDay(DateTime d1, [DateTime d2]) {
  DateTime current = DateTime.now();

  return d2 == null
      ? (d1.day == current.day && d1.month == current.month)
      : (d1.day == d2.day && d1.month == d2.month)
  ;
}

bool isUnlocked(DateTime target) {
  DateTime current = DateTime.now();

  return target.isBefore(current);
}
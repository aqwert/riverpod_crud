String formatDate(DateTime? date) {
  return date == null ? '' : '${date.year}-${date.month}-${date.day}';
}

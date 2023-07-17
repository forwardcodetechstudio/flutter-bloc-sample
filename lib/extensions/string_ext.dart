extension StringExt on String {
  String capitalize(String text) {
    return toUpperCase();
  }

  String titleCase(String text) {
    final input = text.toLowerCase();

    return '${input[0].toUpperCase()} ${input.substring(1, input.length)}';
  }
}

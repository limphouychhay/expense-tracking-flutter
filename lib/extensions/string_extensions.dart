/// An extension for replacing more than 10 in a String with 9+.
extension StringExt on String {
  String get convertToBadgeString {
    if (length >= 2) {
      return '9+';
    }
    return this;
  }

  String get firstLetterUpperCase {
    return substring(0, 1).toUpperCase() + substring(1);
  }

  String get removeUnderScore {
    return replaceAll('_', ' ');
  }

  String get listToString {
    return replaceAll(',', '').replaceAll('[', '').replaceAll(']', '');
  }
}

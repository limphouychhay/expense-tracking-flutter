abstract class AppMetrics {
  double get extraHuge;
  double get huge;
  double get extraLarge;
  double get large;
  double get medium;
  double get small;
  double get tiny;

  double get borderRadius;
  double get inputHeight;
  double get buttonHeight;

  double get defaultPadding;
  double get defaultFontSize;
}

class _MobileMetrics extends AppMetrics {
  _MobileMetrics();
  @override
  double get extraHuge => 64.0;
  @override
  double get huge => 32.0;
  @override
  double get extraLarge => 25.0;
  @override
  double get large => 16.0;
  @override
  double get medium => 12.0;
  @override
  double get small => 6.0;
  @override
  double get tiny => 3.0;

  @override
  double get borderRadius => 8.0;
  @override
  double get inputHeight => 48.0;
  @override
  double get buttonHeight => 50.0;

  @override
  double get defaultPadding => 16.0;
  @override
  double get defaultFontSize => 14.0;
}

class Metrics {
  static AppMetrics instance = _MobileMetrics();
}

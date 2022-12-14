abstract class AppMetrics {
  double get extraHuge;
  double get huge;
  double get large;
  double get medium;
  double get small;
  double get tiny;

  double get borderRadius;
  double get inputHeight;
}

class _MobileMetrics extends AppMetrics {
  _MobileMetrics();
  @override
  double get extraHuge => 64.0;
  @override
  double get huge => 32.0;
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
}

class Metrics {
  static AppMetrics instance = _MobileMetrics();
}

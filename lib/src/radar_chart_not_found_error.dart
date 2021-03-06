/// The error that will be thrown if [Provider.of<T>] fails to find a
/// [Provider<T>] as an ancestor of the [BuildContext] used.
class RadarChartNotFoundError extends Error {
  /// The type of the Widget requesting the value
  final Type widgetType;

  /// Create a ProviderNotFound error with the type represented as a String.
  RadarChartNotFoundError(this.widgetType);

  @override
  String toString() {
    return '''
Error: Could not find the correct RadarChart above this $widgetType Widget
To fix, please:
  * RadarData
  * Always use package imports. Ex: `import 'package:my_app/my_code.dart';
  * Ensure the correct `context` is being used.
If none of these solutions work, please file a bug at:
https://github.com/kranfix/flutter_radar_chart/issues
''';
  }
}

import 'src/greeting_service.dart';

class GreetingSdk {
  static const String version = '1.0.0';

  final GreetingService _greetingService = GreetingService();

  bool _isInitialized = false;

  void initialize() {
    _isInitialized = true;
    print('Greeting SDK initialized successfully.');
  }

  String getGreeting(String name) {
    if (!_isInitialized) {
      throw StateError(
        'Please initialize the SDK before using it.',
      );
    }

    return _greetingService.getGreeting(name);
  }

  String getSdkVersion() {
    return version;
  }
} 











// /// Support for doing something awesome.
// ///
// /// More dartdocs go here.
// library;

// export 'src/greeting_sdk_base.dart';

// // TODO: Export any libraries intended for clients of this package.








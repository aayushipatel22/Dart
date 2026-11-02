import 'package:greeting_sdk/greeting_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('GreetingSdk Tests', () {
    test('SDK returns the correct version', () {
      final sdk = GreetingSdk();

      expect(sdk.getSdkVersion(), '1.0.0');
    });

    test('SDK generates a greeting after initialization', () {
      final sdk = GreetingSdk();

      sdk.initialize();

      expect(
        sdk.getGreeting('Ayushi'),
        'Hello, User! Welcome to our application.',
      );
    });

    test('SDK rejects an empty name', () {
      final sdk = GreetingSdk();

      sdk.initialize();

      expect(
        () => sdk.getGreeting(''),
        throwsArgumentError,
      );
    });

    test('SDK requires initialization', () {
      final sdk = GreetingSdk();

      expect(
        () => sdk.getGreeting('Ayushi'),
        throwsStateError,
      );
    });
  });
}








// import 'package:greeting_sdk/greeting_sdk.dart';
// import 'package:test/test.dart';

// void main() {
//   group('A group of tests', () {
//     final awesome = Awesome();

//     setUp(() {
//       // Additional setup goes here.
//     });

//     test('First Test', () {
//       expect(awesome.isAwesome, isTrue);
//     });
//   });
// }

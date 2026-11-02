import 'package:greeting_sdk/greeting_sdk.dart';

void main() {
  // Create SDK object
  final sdk = GreetingSdk();

  // Initialize SDK
  sdk.initialize();

  // Get SDK version
  String version = sdk.getSdkVersion();

  print('SDK Version: $version');

  // Generate greeting
  String message = sdk.getGreeting('User');

  print(message);
}




// import 'package:greeting_sdk/greeting_sdk.dart';

// void main() {
//   var awesome = Awesome();
//   print('awesome: ${awesome.isAwesome}');
// }

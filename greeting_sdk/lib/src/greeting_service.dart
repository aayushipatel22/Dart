class GreetingService {
  String getGreeting(String name) {
    if (name.trim().isEmpty) {
      throw ArgumentError('Name cannot be empty');
    }

    return 'Hello, ${name.trim()}! Welcome to our application.';
  }
}
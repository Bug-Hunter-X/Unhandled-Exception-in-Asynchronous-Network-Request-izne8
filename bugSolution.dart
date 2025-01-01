```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData['key']);
      } catch (jsonError) {
        print('Error decoding JSON: $jsonError');
        //Log this error for debugging purposes
      }
    } else {
      print('Request failed with status: ${response.statusCode}. Response body: ${response.body}');
      // Handle the non-200 status code more specifically
      // Maybe retry or show a specific error message to the user
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Consider logging to a more permanent solution such as Sentry or Firebase Crashlytics
  }
}
```
```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON string
      final jsonData = jsonDecode(response.body);
      // Access data from jsonData
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception
    print('Error fetching data: $e');
    // Consider rethrowing the exception or logging it more thoroughly
    // rethrow;
  }
}
```
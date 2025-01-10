```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      // Access and use the data from jsonData
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error: $e');
    // Rethrow the exception to be handled by the caller
    rethrow;
  }
}
```
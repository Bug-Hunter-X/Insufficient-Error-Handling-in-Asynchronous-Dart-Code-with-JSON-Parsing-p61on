```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> data = jsonDecode(response.body);
      // Process the data
      for (var item in data) {
        print(item['name']); //Example of accessing a field.  If the field doesn't exist, it throws an error
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Here is the missing error handling which is a common error.
    rethrow; // Re-throw to allow calling method to handle the exception
  }
}
```
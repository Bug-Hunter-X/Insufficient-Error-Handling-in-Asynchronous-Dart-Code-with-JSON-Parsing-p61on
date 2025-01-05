```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final List<dynamic> data = jsonDecode(response.body);
        for (var item in data) {
          final name = item['name'] ?? 'N/A'; // Handle missing 'name' field
          print('Name: $name');
        }
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
      } catch (e) {
        print('Error during data processing: $e');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Re-throw to allow calling method to handle the exception
    rethrow;
  }
}
```
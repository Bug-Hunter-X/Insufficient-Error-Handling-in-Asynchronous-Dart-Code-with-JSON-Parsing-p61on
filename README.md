# Insufficient Error Handling in Asynchronous Dart Code with JSON Parsing

This repository demonstrates a common error in Dart:  inadequate error handling when dealing with asynchronous operations and JSON data. The provided code snippet fetches data from an API, parses it as JSON, and prints specific fields.  However, it lacks robust error handling for scenarios such as invalid JSON or missing fields within the JSON structure.

The `bug.dart` file showcases the flawed code.  The solution (`bugSolution.dart`) addresses the issue with improved error handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.  If the API is unreachable or returns invalid JSON, the program will crash without a helpful error message.
3. Then run `bugSolution.dart` to see how to handle errors properly.

## Solution

The solution involves using `try-catch` blocks to handle `FormatException` (for invalid JSON) and providing a default value for missing fields to avoid exceptions. 
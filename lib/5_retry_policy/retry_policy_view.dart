import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class RetryPolicyView extends StatefulWidget {
  const RetryPolicyView({super.key});

  @override
  RetryPolicyViewState createState() => RetryPolicyViewState();
}

class RetryPolicyViewState extends State<RetryPolicyView> {
  final Dio _dio = Dio();
  int maxRetries = 3; // Maximum number of retries

  @override
  void initState() {
    super.initState();
  }

  Future<void> fetchDataWithRetries() async {
    for (int retry = 0; retry <= maxRetries; retry++) {
      try {
        final response =
            await _dio.get('https://jsonplaceholder.typicode.com/posts');

        if (response.statusCode == 200) {
          // Handle the successful response here
          print(response.data);
          return;
        } else {
          // Handle other status codes if needed
          print('Request failed with status code ${response.statusCode}');
        }
      } catch (e) {
        // Handle other errors or retries here
        print('Error: $e');
      }

      // If it's not the last retry, wait for a moment before retrying
      if (retry < maxRetries) {
        await Future.delayed(
            const Duration(seconds: 5)); // Wait for 5 seconds between retries
      }
    }

    print('Max retries reached. Request failed.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retry Policy Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: fetchDataWithRetries,
          child: const Text('Fetch Posts with Retries'),
        ),
      ),
    );
  }
}

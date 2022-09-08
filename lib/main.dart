import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop Ui',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Coffee Shop Ui'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

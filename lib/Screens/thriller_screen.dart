import 'package:flutter/material.dart';

class ThrillerPage extends StatelessWidget {
  const ThrillerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Screen'),
      ),
      body: const Center(
        child: Text(
          'This is a thriller screen.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

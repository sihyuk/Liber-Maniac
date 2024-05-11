import 'package:flutter/material.dart';

class ChildrenPage extends StatelessWidget {
  const ChildrenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Screen'),
      ),
      body: const Center(
        child: Text(
          'This is a children screen.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

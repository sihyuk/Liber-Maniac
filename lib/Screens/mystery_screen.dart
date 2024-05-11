import 'package:flutter/material.dart';

class MysteryPage extends StatelessWidget {
  const MysteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Screen'),
      ),
      body: const Center(
        child: Text(
          'This is a mystery screen.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

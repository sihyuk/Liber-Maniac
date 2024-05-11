import 'package:flutter/material.dart';

class HorrorPage extends StatelessWidget {
  const HorrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Screen'),
      ),
      body: const Center(
        child: Text(
          'This is a horror screen.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

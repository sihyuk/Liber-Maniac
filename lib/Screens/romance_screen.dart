import 'package:flutter/material.dart';

class RomancePage extends StatelessWidget {
  const RomancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Screen'),
      ),
      body: const Center(
        child: Text(
          'This is a romance screen.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

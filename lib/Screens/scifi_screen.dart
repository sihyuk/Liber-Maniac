import 'package:flutter/material.dart';

class SciFiPage extends StatelessWidget {
  const SciFiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Screen'),
      ),
      body: const Center(
        child: Text(
          'This is a scifi screen.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

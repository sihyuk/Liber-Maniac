import 'package:flutter/material.dart';

class ComicPage extends StatelessWidget {
  const ComicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Screen'),
      ),
      body: const Center(
        child: Text(
          'This is a comic screen.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

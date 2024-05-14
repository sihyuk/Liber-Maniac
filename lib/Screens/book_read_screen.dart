import 'package:flutter/material.dart';

class BookReadScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final double price;

  const BookReadScreen(
      {required Key key,
      required this.title,
      required this.imagePath,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(129, 8, 61, 1.0),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(20.0), // Set border radius here
              child: Card(
                elevation: 5,
                child: Container(
                  color: const Color.fromARGB(255, 193, 180, 175),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    description,
                    textAlign: TextAlign.justify, // Justify the text
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

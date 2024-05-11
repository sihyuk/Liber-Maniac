import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/add_to_cart_screen.dart';

class BookDetailsScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const BookDetailsScreen(
      {required Key key,
      required this.title,
      required this.imagePath,
      required this.description})
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
          iconTheme: const IconThemeData(color: Colors.white)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Display the image
            Image.asset(
              imagePath,
              width: 150,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            // Description Text
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Text(description),
            ),
            // Price Text
            const Text(
              'Price: \$25.0',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Add to Cart Button
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AddToCartScreen(
                      title: title,
                      imagePath: imagePath,
                      price:
                          25.0, // You can pass the price or any other necessary data to the AddToCartScreen
                    );
                  },
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(129, 8, 61, 1.0))),
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white),
              ),
            ),
            // Add other details or components as needed
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

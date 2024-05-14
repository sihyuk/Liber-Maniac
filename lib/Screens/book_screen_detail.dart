import 'package:flutter/material.dart';
import 'package:liber_maniac/cart/add_to_cart_screen.dart';
import 'package:liber_maniac/cart/cart_screen.dart';

class BookDetailsScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final double price;

  const BookDetailsScreen(
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
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to the cart screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const CartScreen()), // Replace CartScreen() with your cart screen
              );
            },
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Display the image
            Card(
              elevation: 12,
              child: Image.asset(
                imagePath,
                width: 150,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),
            // Description Text
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
            // Price Text
            Text(
              'Price: \$${price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                          price, // You can pass the price or any other necessary data to the AddToCartScreen
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

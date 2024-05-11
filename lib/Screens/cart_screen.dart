import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final double price;
  final int quantity;

  const CartScreen({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Implement your CartScreen UI here
    return Container(
        // Your CartScreen UI
        );
  }
}
